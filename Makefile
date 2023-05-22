IMAGE_NAME := hello-app

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -p 8080:8080 $(IMAGE_NAME)

.PHONY: clean
clean:
	docker rm -f $$(docker ps -aq --filter "ancestor=$(IMAGE_NAME)") || true
	docker rmi -f $(IMAGE_NAME) || true
