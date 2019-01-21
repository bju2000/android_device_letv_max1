#!/bin/bash

echo "Saving to proprietary-files.txt.new"

> proprietary-files.txt.new
cat proprietary-files.txt | while read l
do
    if [ $(echo "$l" | grep "^#" | wc -l) -gt 0 ] || [ $(echo "$l" | grep "^ *$" | wc -l) -gt 0 ]
    then
        echo "$l" >> proprietary-files.txt.new
    else
        thefile=$(echo "$l" | cut -d '|' -f 1 | cut -d ':' -f 1 | cut -d '@' -f 1)
        if [ $(echo "$thefile" | grep '^-' | wc -l) -ne 0 ]
        then
            thefile=$(echo "$thefile" | cut -d '-' -f 2-)
        fi
        exists=$(adb shell -x -n "if [ -e '/system/$thefile' ]; then echo -n 1; else echo -n 0; fi")
        if [ $? -ne 0 ]
        then
            echo "error in adb"
            exit 1
        fi

        if [ "$exists" == "1" ]
        then
            echo "$l" >> proprietary-files.txt.new
        else
            echo "NOT FOUND....: $thefile"
            echo "ORIGINAL LINE: $l"
            echo "NOT FOUND: $l" >> proprietary-files.txt.new
        fi
    fi
done

echo "All done."
