#! /bin/bash -x

IS_FULL_TIME_PRESENT=1
IS_PART_TIME_PRESENT=2
EMP_RATE_PER_HR=20

	empCheck=$((RANDOM%3))

	case $empCheck in
	     $IS_FULL_TIME_PRESENT)
	     empHr=8 ;;
	     $IS_PART_TIME_PRESENT)
	     empHr=4 ;;
	     *)
	     empHr=0 ;;
	esac
	     salary=$(( $empHr * $EMP_RATE_PER_HR ))
