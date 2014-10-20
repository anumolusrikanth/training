Mail=mmarothu@nisum.com
#df -H  | awk '{print $1 " "  $5}' 
#df -H | grep -e /dev/xvda1 | awk '{print $5 $1}' | while read Result

limit=10
i=1

df -H | awk '{print $5 $1}' | while read Result
do
#echo $Result
if [ $i -eq 1 ]; then
#echo "first time"
i=0
continue
fi

use=`echo $Result | cut -d'%' -f1`
fs=`echo $Result | cut -d'%' -f2`

if [ $use -gt $limit ]; then
echo "running out of disk space in "$fs" - currently using "$use"%"
#mail -s "Disk out of space $Result

fi

done
