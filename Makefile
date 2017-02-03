all: serve

serve:
	rm -rf iris-frontend iris-api iris-relay
	git clone --depth 1 git@github.com:linkedin/iris-frontend.git iris-frontend
	git clone --depth 1 git@github.com:linkedin/iris-api.git iris-api
	git clone --depth 1 git@github.com:linkedin/iris-relay.git iris-relay
	install -d logs/iris-{api,frontend,relay}/{nginx,uwsgi}
	docker-compose up -d

clean:
	rm -rf iris-frontend iris-api iris-relay
