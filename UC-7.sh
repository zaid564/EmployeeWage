#! /bin/bash -x
#constant variable
IS_FULL_TIME_PRESENT=1
IS_HALF_TIME_PRESENT=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=70
#variable
totalWorkHR=0
day=1
function getWorkHR() {
        local empCheck=$1
        local empHrsL=0
        # selection
        case $empCheck in
        $IS_FULL_TIME_PRESENT)
           empHrsL=8 ;;
        $IS_HALF_TIME_PRESENT)
           empHrsL=4 ;;
        *)
           empHrsL=0 ;;
        esac
        # return back result
        echo $empHrsL
}



while [ $day -le $MAX_WORKING_DAYS -a $totalWorkHour -le $MAX_WORK_HR ]
do
        # variable
       empCheck=$((RANDOM%3)) # 0,1,2
        empHrs="$(getWorkHR $empCheck)" # call the function
        totalWorkHR=$(( totalWorkHR + empHrs ))
        salary=$(( empHrs * EMP_RATE_PER_HR ))
done
totalsalary=$(( totalworkHR * EMP_RATE_PER_HR ))
