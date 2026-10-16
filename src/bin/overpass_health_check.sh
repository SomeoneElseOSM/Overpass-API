# ----------------------------------------------------------------------------
# Daily Overpass health check
# overpass_health_check.sh
# ----------------------------------------------------------------------------
echo "Overpass health check:"
hostname
dnsdomainname
cd /opt/op
#
echo
echo "OSC download timestamp"
grep timestamp diff/state.txt
echo
echo "apply_osc_to_db timestamp"
ls -alt /opt/op/db/apply_osc_to_db.???
#
echo
echo "Disk space and usage:"
df .
du -s * | sort -n -r 
#echo
#echo "Logs:"
#ls -alt log
echo
echo "fetched_osc status:"
ls -alt diff
echo
echo "Processes:"
ps -ef | grep "/op/" | grep -v grep
#
