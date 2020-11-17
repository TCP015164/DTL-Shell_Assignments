#!/bin/bash

printf " -------- Calculator -------- \n";

echo "Enter a number1 : "
read a
echo "Enter a number2 : "
read b

printf "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Remainder(Modulo) \n6. Exit\n\nEnter a choice : \n"
read ch

case $ch in
	1)
		sum=`expr $a + $b`
		echo "sum : $sum";;
	2)
		sub=`expr $a - $b`
		echo "subtraction : $sub";;
	3)
		mult=`expr $a \* $b`
		echo "multiplication : $mult";;
	4)
		div=`expr $a \/ $b`
		echo "division : $div";;
        5)
                rem=`expr $a \% $b`
                echo "Remainder when $q is divided by $b : $rem ";;
	*)
		echo "Program End !"
		break;;
esac
