build:
	./docker/build.sh

up:
	@make build
	docker compose -f compose.yml up -d
logs:
	docker compose logs -f
rm:
	docker compose rm  -sfv
start:
	docker compose start
stop:
	docker compose stop
restart:
	@make rm
	@make up
	@make logs

aws-cli:
	docker run --network=adjoe-test  adjoe-test/awscli --region=eu-central-1 --endpoint-url="http://localstack:4566" $(filter-out $@,$(MAKECMDGOALS))

help:
	@echo "make container=adjoe_test-task_1 bash \t\t\t: exec a bash shell in the specific container"
