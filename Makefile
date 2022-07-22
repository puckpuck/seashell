VERSION=$(shell cat version.txt)

build:
	docker build -t puckpuck/seashell:$(VERSION) .

push: build
	docker push puckpuck/seashell:$(VERSION)

deploy:
	kubectl apply -f .
