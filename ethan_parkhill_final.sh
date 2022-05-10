#!bin/bash
clear
#Had to comment out this code. Error that I am not able to find screws up the other code
#Question 3
#i=0
#while [ $i -lt 30 ]
#do
#	num=$(($RANDOM%99))
#	array[$i]=$num
#	let i++
#done
#echo "Unsorted: "
#echo "${array[*]}"

#sortFunction(){
#index=$1
#if [ ${#array[*]} -lt 1 ]
#then
#	return 0
#else
#	for (( i=0; i<$n-1; i++ ))
#	do
#		if [ ${array[i]} -gt ${array[i+1]} ]
#		then
#			temp=${array[i]}
#			array[i]=${array[i+1]}
#			array[i+1]=$temp
#		fi
#	done
#fi
#sortFunction $n
#}

#sortFunction "${array[@]}"
#echo "The sorted array"
##echo "${array[@]}"
#echo "Writing to a file"
#filename="num.txt"
#echo ${array[@]} > $filename



#Question 8
echo "Question 8"
sumEven=0
for i in $(seq 50 2 100)
do
	let sumEven=sumeEven+i
	let i++
done
echo $sumEven

sumOdd=0
for i in $(seq 51 2 101)
do
	let sumOdd=sumOdd+i
	let i++
done
echo $sumOdd

echo "Question 9"
#Question 9
i=0
while [ $i -lt 20 ]
do
	num=$(($RANDOM%99))
	array[$i]=$num
	let i++
done
echo "Unsorted: "
echo "${array[*]}"
for ((i = 0; i<30; i++))
do
	for((j=0; j<30-i-1; j++))
	do
		if [ ${array[j]} -lt ${array[$((j+1))]} ]
		then
			temp=${array[j]}
			array[$j]=${array[$((j+1))]}
			array[$((j+1))]=$temp
		fi
	done
done
echo "Sorted: "
echo ${array[*]}

#Question 10
echo "Question 10"
echo -n "Enter the first number"
read input
num1=$input
echo -n "Enter the second number"
read input
num2=$input
addition(){
	sum=0
	let sum=num1+num2
	echo "With addition"
	echo "$sum"
}
subtraction(){
	sub=0
	let sub=num1-num2
	echo "With subtraction"
	echo "$sub"
}
multiplication(){
	mult=0
	let mult=num1*num2
	echo "With multiplication"
	echo "$mult"
}
exponential(){
	exp=0
	let exp=num1**num2
	echo "With exponential"
	echo "$exp"
}
addition $num1 $num2
subtraction $num1 $num2
multiplication $num $num2
exponential $num $num2
