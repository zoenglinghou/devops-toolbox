image_name ?= "devops-toolbox"
container_name ?= "devops"

build:
	podman build --pull -t $(image_name) .
	podman image prune -f

create: build
	distrobox create --image $(image_name) $(container_name)

destroy:
	distrobox rm --force $(container_name)

enter: create
	distrobox enter $(container_name)
