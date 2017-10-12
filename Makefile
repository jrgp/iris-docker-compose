all: serve

serve:
	rm -rf iris-api iris-relay
	git clone --depth 1 git@github.com:linkedin/iris-api.git iris-api
	git clone --depth 1 git@github.com:linkedin/iris-relay.git iris-relay
	install -d logs/iris-{api,relay}/{nginx,uwsgi}
	docker-compose up -d

clean:
	rm -rf iris-api iris-relay
