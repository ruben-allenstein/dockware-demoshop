.PHONY: help
.DEFAULT_GOAL := help

PHP_VERSION_CURRENT=$(shell php -r 'echo PHP_MAJOR_VERSION.".".PHP_MINOR_VERSION;')

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# ---------------------------------------------------------------------------------------------
docker-start: ## starts the docker container
	docker-compose up -d

# ---------------------------------------------------------------------------------------------
docker-exec: ## connects to docker container
	docker exec -it testshop_shop bash

# ---------------------------------------------------------------------------------------------
docker-stop: ## stops the docker container
	docker stop testshop_shop
	docker stop testshop_redis
	docker stop testshop_db
	docker stop testshop_elasticsearch