#!/bin/sh
# This is to be used by the Dockerfile build

# If 'MODE' "lab" then use IP address of CouchDB instance
# Note: assumes name 'couchdb' entry in /etc/hosts
if [[ "$MODE" == "lab" ]]; then
	export DBSERVER=`cat /etc/hosts | grep couchdb | cut -f 1 | uniq`
	sed -i -e "s/couchdb/$DBSERVER/" /opt/flaskrcloud/config/pod.ini
fi

cd /opt/flaskrcloud
source venv/bin/activate
python flaskr.py


#
# END OF FILE
#
