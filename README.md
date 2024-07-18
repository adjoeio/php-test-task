# go-test-task
**how to use**

- To start, please install: docker, docker compose, php and composer
- the docker image is using php8.2, if you have dependencies that do not work with php8 you can also downgrade to php7
- `'make up'` on root folder run it will start test-task docker container with all requied dependencies. 
- `'make bash'` to open container bash window 
- `localhost:8080` to access the API
- `make aws-cli foo bar` to execute the aws cli with parameters foo bar
- `make aws-cli sqs list-queues` to access the sqs queue on aws localstack
- To access the sql server, use mysql:3306 as adress and Port.
- In your go application you have to use the eu-central-1 region to access aws localstack