start: docker-run
stop: docker-rm
docker-run:
	nc -z localhost 8080 || docker run -d \
	--name coloradokahen-familyfeud \
	--volume ${PWD}:/usr/local/apache2/htdocs/ \
	-p 8080:80 \
	httpd:alpine && sleep 1

	open http://localhost:8080
	
docker-rm:
	docker rm -f coloradokahen\-familyfeud