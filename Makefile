IMAGE_NAME := hello-app

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -d $(IMAGE_NAME) sleep infinity

.PHONY: clean
clean:
	docker rm -f $$(docker ps -aq --filter "ancestor=$(IMAGE_NAME)") || true
	docker rmi -f $(IMAGE_NAME) || true
