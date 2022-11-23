read location

K=`ls $location | grep *.sh`
# F=`$K | wc -l`
# echo $K
if [[ -z $K ]] #string not empty
then
	echo "No such shell file" 
else
	echo $K
fi

