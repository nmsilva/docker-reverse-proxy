SHELL := /bin/bash

DOCKER_IP = $(shell ip route | awk '/docker0/ {print $$NF}')
export DOCKER_IP

start:
	docker-compose start

build:
	docker-compose build

stop:
	docker-compose stop

up:
	docker-compose up -d

rm:
	docker-compose rm -f

status:
	docker-compose ps



