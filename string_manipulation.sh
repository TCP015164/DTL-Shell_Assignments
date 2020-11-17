#!/bin/bash

printf " ---------- String Manipulation -----------\n\n";
printf " 1. COMPARE STRING \n 2. Extraction of substring \n 3. LENGTH OF STRING \n 4. Concatenation of strings \n 5. Reverse a string \n 6. Occurence of character \n 7. Occurence of word \n 8.  EXIT \n\n"

printf " Enter a choice : "
read ch


case $ch in
	1)
		printf "\n Enter a string 1 : ";
                read str1
                printf "\n Enter a string 2 : ";
                read str2

		if [ $str1 == $str2 ];
		then 
			echo "Both strings are same"
		elif [ $str1 \> $str2 ];
		then 
			echo " String1 is greator than string2"
		else
			echo "String2 is greator than string1" 
		fi;;
	2)
		printf "\n Enter a string 1 : ";
                read str1

		printf "\n enter the index : ";
		read ind
		printf "\n enter the length : ";
		read len
		
		echo " Desired substring of string $str1 is :${str1:$ind:$len}";;

        3)
		printf "\n Enter a string 1 : ";
                read str1
                printf "\n Enter a string 2 : ";
                read str2

		echo " length of string1 = ${#str1}"
		
		echo " length of string2 = ${#str2}" ;;
	
	4)
		printf "\n Enter a string 1 : ";
                read str1
                printf "\n Enter a string 2 : ";
                read str2

		echo " Concatenated string = $str1$str2";;
	5)
		printf "\n Enter a string : ";
		read str
	        echo "Reversed string : " `echo  $str | rev`;;
       
       6)
                printf "Enter a string : ";
                read str
                printf "Enter character you want to find : ";
                read c
                len=${#str}
		count=0;
		for((i=0 ; i<$len ; i++ ))
		do
		        if [ ${str:$i:1} == $c ];
                then
		        count=$((count + 1))
                fi;
		done
		echo "$c Occured $count times in $str";;
       7)
                printf "Enetr a string : ";
                read str
                printf "Enter a word : ";
                read word 
                len=${#str}
	        count=0;
	        for((i=0 ; i<$len ; i++ ))
	        do
	 	        if [ ${str:$i:$word+$i} == $word ];
                then
 			count=$((count + 1))
                fi;
	        done
		echo "$c Occured $count times in $str";;

       *)
               printf "\n End Of Program ";; 
		

esac
	



