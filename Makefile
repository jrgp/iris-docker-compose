all: serve

serve:
	install -d logs/iris-{api,relay}/{nginx,uwsgi}
	docker-compose up -d

clean:
	rm -rf iris-api iris-relay
