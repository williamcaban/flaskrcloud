#!/bin/sh
# This is to be used by the Dockerfile build

# To run containr:
# sudo docker  run  -d  -p  5000:5000 -e COUCHDB=10.20.0.14  --name  flaskrcloud  registry.lab:5000/flaskrcloud

# Assumes an envrionment variable
if [[ "$COUCHDB" != "" ]]; then
    echo $COUCHDB couchdb >> /etc/hosts
else
    echo "WARINING: Assuming /etc/host file has been updated"
    cat /etc/hosts
fi

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
