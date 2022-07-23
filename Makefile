VERSION=$(shell cat version.txt)

build:
	docker build -t puckpuck/seashell:$(VERSION) .

push: build
	docker push puckpuck/seashell:$(VERSION)

push-all: build
	docker push puckpuck/seashell:$(VERSION)
	docker tag puckpuck/seashell:$(VERSION) puckpuck/seashell:latest
	docker push puckpuck/seashell:latest

deploy:
	kubectl apply -f seashell.yaml
