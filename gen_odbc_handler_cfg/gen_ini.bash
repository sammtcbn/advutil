#!/bin/bash

fieldnum=255
fieldtype="double"
outputfile=ini.txt

# output FieldName
echo -n "FieldName=TIME," > $outputfile
for i in `seq $fieldnum`; do
    echo -n "field$i" >> $outputfile
    if [ "$i" == "$fieldnum" ]; then
        break
    fi
    echo -n "," >> $outputfile
done

# change to next line
echo "" >> $outputfile

# output FieldDataType
echo -n "FieldDataType=timestamp," >> $outputfile
for i in `seq $fieldnum`; do
    echo -n $fieldtype >> $outputfile
    if [ "$i" == "$fieldnum" ]; then
        break
    fi
    echo -n "," >> $outputfile
done

