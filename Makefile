.PHONY: build 

COMPOSE = docker-compose
NEXUS_MAG= ./app/nexus-mag

# temp disable build for these repo, using jenkins built binaries instead cyberx_common cyberx_xchange cyberx_xchange_gateway
build: router controller

router:
	$(COMPOSE) build router

controller:
	$(COMPOSE) build controller

update:
	git submodule update --init --remote

up:
	${COMPOSE} up -d

down:
	${COMPOSE} down

stop:
	${COMPOSE} stop