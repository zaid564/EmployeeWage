#! /bin/bash -x
#constant variable
IS_FULL_TIME_PRESENT=1
IS_HALF_TIME_PRESENT=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=70
DAYN=0
#variable
totalworkhour=0
day=1
while [ $day -le $MAX_WORKING_DAYS ]
do
        # variable
        ((DAYN++))
        echo "$DAYN"
       empCheck=$((RANDOM%3))
        # selection
        case $empCheck in
               $IS_FULL_TIME_PRESENT)
                   empHr=8 ;;
                $IS_HALF_TIME_PRESENT)
                   empHr=4 ;;
                *)
                   empHr=0
esac
        totalworkhour=$(( totalworkhour + empHr ))
        salary=$(( empHr * EMP_RATE_PER_HR ))
        ((day++))
done
#if [ $totalworkhour -gt $MAX_WORK_HR ]
#then
#       totalworkhour=70
#fi
totalsalary=$(( totalworkhour * EMP_RATE_PER_HR ))
                                                      
