echo "Input File Path"
read Path
if [ -z $Path ]
then
    Path="/home/ntkien4/script/text.txt"
fi
cat $Path | sed 's/@/"REPLACED"/g;
s/\//"REPLCAED"/g;
s/!/"REPLACED"/g;
s/'\''/"REPLACED"/g'