echo "process monitoring tool"
echo "***********************"
echo "UPTIME" 
uptime
echo "***********************"
echo "TOTAL Cpu USAGE"
top -bn1| grep "Cpu(s):"| cut -d ',' -f 4 |awk '{print 100-$1}'
echo "***********************"
echo "TOTAL Mem USAGE"
free -h| grep "Mem"|awk '{print $3}'
echo "***********************"
echo "TOP 5 PROCESS BY Mem USAGE"
ps aux --sort -%mem | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'
echo "***********************"
echo "TOP 5 PROCESS BY Cpu USAGE"
ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'

