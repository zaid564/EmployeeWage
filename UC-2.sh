#! /bin/bash -x

IS_PRESENT=1
EMP_RATE_PER_HR=20

	empCheck=$((RANDOM%2))

	if [ $empCheck -eq $IS_PRESENT ]
	then
		echo "Employee is present"
		empHr=8
		salary=$(( empHr * EMP_RATE_PER_HR ))
	else
		echo "Employee is absent"
		salary=0
	fi
