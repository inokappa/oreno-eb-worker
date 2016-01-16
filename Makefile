DOCKER_BUILD := docker build --no-cache=true -t inokappa/sinatra-worker .
DOCKER_RUN := docker run -d -p 4567:4567 --name=sinatra-worker -v /tmp:/tmp -v /etc/localtime:/etc/localtime:ro inokappa/sinatra-worker
DOCKER_RM := docker rm -f sinatra-worker

build:
	$(DOCKER_BUILD)

run:
	$(DOCKER_RUN)

destroy:
	$(DOCKER_RM)
