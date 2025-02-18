read x y n

for ((i = 1; i <= n; i++))
do

if ((i % x == 0 && i % y == 0))
then echo "Fizzbuzz"

elif ((i % x == 0))
then echo "fizz"

elif ((i % y == 0))
then echo "buzz"
fi

done
