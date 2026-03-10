# ----------------------------------------------------------------------------
# Daily Overpass health check
# overpass_health_check.sh
# ----------------------------------------------------------------------------
echo "Overpass health check:"
hostname
dnsdomainname
echo "Disk space and usage:"
df .
cd /opt/op
du -s * | sort -n -r 
echo
echo "Logs:"
ls -alt log
echo
echo "fetched_osc status:"
ls -alt diff
grep timestamp diff/state.txt
echo
echo "Processes:"
ps -ef | grep "/op/" | grep -v grep
#
