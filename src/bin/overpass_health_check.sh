# ----------------------------------------------------------------------------
# Daily Overpass health check
# overpass_health_check.sh
# ----------------------------------------------------------------------------
echo "Overpass health check:"
hostname
dnsdomainname
echo "Disk space and usage:"
grep timestamp diff/state.txt
df .
cd /opt/op
du -s * | sort -n -r 
echo
echo "Logs:"
ls -alt log
echo
echo "fetched_osc status:"
ls -alt diff
echo
echo "Processes:"
ps -ef | grep "/op/" | grep -v grep
#
