#!/bin/sh

my_func()
{
	echo "enter a number 1"
	read Na
	echo "enter number 2"
	read Nb
	echo "the number you enter is $Na  $Nb "
	return $(($Na + $Nb))
}

transfer_var_func()
{
	echo "No 1 var is $1"
	echo "No 2 var is $2"
	echo "No 3 var is $3"
	echo "No 4 var is $4"
	echo "total  variance sum is $#"
	echo "display all variance : $*"
}

expr_func()
{
	echo "enter  num1 num2"
	read na
	read nb
	return `expr $na + $nb`
}

loop_func()
{
	echo "enter a website"
	while read website
	do
		echo "$website is good website"
	done
	for loop in 1 2 33 4 55
	do 
		echo "loop = $loop"
	done

	for str in "Hello Meng mian mian"
	do
		echo $str
	done

	i=1
	while((i<=5))
	do
		echo $i
		let "i++"
	done 

	a=0
	until [ ! $a -lt 10 ]
	do
		echo $a
		a=`expr $a +  1`
	done
}

if_func()
{
	read a
	read b
	if [ $a == $b ]
	then
		echo "a=b"
	elif [ $a -gt $b ]
	then	
		echo "a>b"
	elif [ $a -lt $b ]
	then
		echo "a<b"
	fi	

	read num1
	read num2
	if test $num1 -eq $num2
	then
		echo "num1==num2"
	else
		echo "num1!=num2"
	fi
}

case_func()
{
	echo " enter  a number to chose OS"
	read n
	case $n in
	1|linux)
		echo "you chose num $n"
		echo "linux OS"
	;;
	
	2|Android)
		echo "you chose num $n"
		echo "Android OS"
	;;

	3|iOS)
		echo "you chose num $n"
		echo " iOS"
	;;
	*)
		echo "Sorry you enter a illegal OS number"
	esac

	while :
	do
		echo "enter a number 1-5"
		read n
		case $n in
			1|2|3|4|5)
				echo "your number is $n"			
			;;
			*)
				echo "you number out of range"
				continue
				echo "Meng mianmian"
			;;		
		esac
	done
}

echo "Hello Meng" >> /home/cjw/Desktop/work/cjw/shell/temp.txt

#loop_func
#case_func	
#if_func
#expr_func
#echo "expr_func result = $? "
#transfer_var_func  11  22  33   44 
#my_func
#echo "sum is $?"

