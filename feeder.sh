IFS_BAK=$IFS

function waitForQ
{
    if [ -z $1 ]
    then
        TIMEOUT=1
    else
        TIMEOUT=$1
    fi
    # echo "TIMEOUT: $TIMEOUT"
    read -n 1 -s -t $TIMEOUT KEY   # read a single character, with timeout

    if [[ $KEY == "q" ]]
    then
        break
    fi
}

if [ $# -lt 1 ]
then
    echo "Atleast the source file name required as a parameter."
    exit
fi

INPUT_FILENAME=$1

if [ -n $2 ]
then
    OUTPUT_FILENAME=$2
else
    OUTPUT_FILENAME="-"
fi

echo -e $INPUT_FILENAME "\t" $OUTPUT_FILENAME "\t" $3

IFS=$'\n'
for line in `cat $INPUT_FILENAME`
do
	#Anything here.
        echo $line | sed 's/\x1b\[[0-9;]*m//g' | sudo tee -a $OUTPUT_FILENAME > /dev/null
	waitForQ $3
done

IFS=$IFS_BAK
