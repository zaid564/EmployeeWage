#! /bin/bash -x

IS_FULL_TIME_PRESENT=1
IS_PART_TIME_PRESENT=2
EMP_RATE_PER_HR=20

	empCheck=$((RANDOM%3))
	if [ $empCheck -eq $IS_FULL_TIME_PRESENT ]
	then
		echo "Employee is full time present"
		empHr=8
	elif [ $empCheck -eq $IS_PART_TIME_PRESENT ]
	then	
		echo "Employee is part time present"
		empHr=4
	else
		echo "Employee is absent"
		empHr=0
	fi	
	salary=$(( $empHr * $EMP_RATE_PER_HR ))
	
