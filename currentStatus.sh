#### CPU 
CPU=`top -b -n2 | grep top | head -1 | awk '{print $13}' | sed s/,//g`
echo "CPU used average in 1 minute: $CPU%"

##### Memory
Mem=`free -m | tail -2 | head -1`
memUsed=`echo $Mem | awk '{print ($2-$7)*100/$2}'`
totalMem=`echo $Mem | awk '{print $2}'`
echo "Mem total: $totalMem"
echo "Mem in-use: $memUsed%"

#### Disk
Disk=`df -h --total | grep /dev/sda2`
usage=`echo $Disk | awk '{print $3}'`
usagePercent=`echo $Disk | awk '{print $5}'`
echo "total disk(/) used: $usage"
echo "Disk in-use %: $usagePercent"