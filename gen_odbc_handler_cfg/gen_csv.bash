#!/bin/bash

totalrecnum=10
fieldnum=255
outputfile=data.csv

# output FieldName
echo -n "TIME," > $outputfile
for i in `seq $fieldnum`; do
    echo -n "field$i" >> $outputfile
    if [ "$i" == "$fieldnum" ]; then
        break
    fi
    echo -n "," >> $outputfile
done

# change to next line
echo "" >> $outputfile

# output record

ts=$(date +"%s")

function gen_value()
{
# gen integer
#    echo $RANDOM

# gen float
    echo "$RANDOM.$RANDOM"
}

function gen_one_record()
{
    # echo time
    tsoffset=$1
    newts=$(( $ts + $tsoffset )) 
    tsstr=$(date +'%Y/%m/%d %H:%M:%S' --date=@$newts)
    echo -n "$tsstr," >> $outputfile

    # echo field value
    for i in `seq $fieldnum`; do
        fieldvalue=$(gen_value)
        echo -n "$fieldvalue" >> $outputfile
        if [ "$i" == "$fieldnum" ]; then
            break
        fi
        echo -n "," >> $outputfile
    done

    # change to next line
    echo "" >> $outputfile
}

for j in `seq $totalrecnum`; do
    gen_one_record $j
    if [ "$j" == "$totalrecnum" ]; then
        break
    fi
done

