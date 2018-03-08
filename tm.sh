#difference=$(($(date -d "21:32" +%s) - $(date +%s))) 
difference=$(($(date +%s)))
echo $difference
if [ $difference -lt 0 ]
then 
	sleep $((86400 + difference)) 
	else 
	sleep $difference 
	espeak "Ok i will start firefox for you deepak sir" -s 110
	sleep 1
	firefox 
fi
