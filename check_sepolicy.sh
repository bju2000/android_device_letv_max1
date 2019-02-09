#!/bin/bash

patterns_file="/tmp/patterns.txt"
sepolicy_file="/home/android_build/android/system_dump/max1_complete_tree/sepolicy"

if [ -f "$patterns_file" ]
then
    echo "Using existing patterns file: $patterns_file"
else
    echo "Gathering all types in *.te files and saving to '$patterns_file'..."
    find ~/android/lineage -name "*.te" -exec grep -h '^\(type\|attribute\) ' {} + > "$patterns_file"
fi

echo "Starting..."
cat sepolicy/*_contexts | grep 'u:object_r:' | sed 's/^.*u:object_r://;s/:.*$//' | sort -u | while read t
do
    found=0
    grep "\(type\|attribute\) $t[,;]" "$patterns_file" > /dev/null
    if [ "$?" -ne 0 ]
    then
        echo "NOT FOUND: $t"
        echo "Trying type..."
        mydata=$(seinfo --flat -x -t "$t" "$sepolicy_file")
        if [ -n "$mydata" ]
        then
            echo "Type found: $mydata"
            echo "$mydata" >> sepolicy/custom_decls.te
        else
            echo "Type not found. Trying attribute..."
            mydata=$(seinfo --flat -x -a "$t" "$sepolicy_file")
            if [ -n "$mydata" ]
            then
                echo "Attribute found: $mydata"
                echo "$mydata" >> sepolicy/custom_decls.te
            else
                echo "Attribute not found"
            fi
        fi
    fi
done
