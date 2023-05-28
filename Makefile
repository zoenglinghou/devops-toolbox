image_name ?= "devops-toolbox"
container_name ?= "devops"

build:
	podman build -t $(image_name) .
	podman image prune -f

create: build
	distrobox create --image $(image_name) $(container_name)

enter: create
	distrobox enter $(container_name)
