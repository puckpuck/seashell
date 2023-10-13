VERSION?=dev

build:
	docker build -t puckpuck/seashell:$(VERSION) .

push: build
	docker push puckpuck/seashell:$(VERSION)

deploy:
	kubectl apply -f seashell.yaml

run: build
	docker run -it --rm puckpuck/seashell:$(VERSION) /bin/bash
