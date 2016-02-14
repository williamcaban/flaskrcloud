#!/bin/sh
# This is to be used by the Dockerfile build 

git clone http://git.snappyvault.com/william/flaskrcloud.git /opt/flaskrcloud
cd /opt/flaskrcloud
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate

#
# END OF FILE
#
