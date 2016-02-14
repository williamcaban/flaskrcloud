#
# Makefile to manage docker build during dev
# (This is to be used to build and test a Docker container)

all:
	docker build -t flaskrcloud .
test:
	docker run -tid -p 5000:5000 -e MODE='lab' --name flaskrcloud flaskrcloud

# Test with CouchDB container
fulltest: test
	docker run -d -p 5984:5984 --name couchdb klaemo/couchdb

clean:
	docker kill flaskrcloud
	docker rm flaskrcloud

# Destroy CouchDB container
fullclean: clean
	docker kill couchdb
	docker rm couchdb

#
# END OF FILE
#
