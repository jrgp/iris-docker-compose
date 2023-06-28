all: serve

serve:
	install -d logs/iris-{api,relay}/{nginx,uwsgi}
	chown 1000:1000 logs/iris-*/nginx
	docker compose up -d

clean:
	rm -rf iris-api iris-relay
