#Prime number
a=2
read num

while($num % $a -eq 0)
do

if [ `expr $num % $a` -eq 0]
then
echo "$num is not a prime number as it is divisible by $a"
exit
fi

i = `expr $i + 1`

then 


echo "$num is a prime number"
