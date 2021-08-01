#! /bin/bash -x
#constant variable
IS_FULL_TIME_PRESENT=1
IS_HALF_TIME_PRESENT=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=70
declare -A dailywage #explicit define of array
#variable
totalWorkHour=0
day=1
counter=0
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



while [ $day -le $MAX_WORKING_DAYS ] && [ $totalWorkHour -le $MAX_WORK_HR ]
do
        # variable
       empCheck=$((RANDOM%3)) # 0,1,2
        empHrs="$(getWorkHR $empCheck)" # call to function
        totalWorkHour=$(( totalWorkHour + empHrs ))
        salary=$(( empHrs * EMP_RATE_PER_HR ))
        dailywage["day_"$day]=$salary
        ((day++))

done
totalsalary=$(( totalWorkHour * EMP_RATE_PER_HR ))
echo indexs:${!dailywage[*]}
echo values:${dailywage[*]}

for key in ${!dailywage[*]}
do
        echo $key:${dailywage[$key]}
done
