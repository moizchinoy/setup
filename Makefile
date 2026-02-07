.PHONY: build create run rm clean rebuild

.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

# Variables for easy updates
IMAGE_NAME = u
CONTAINER_NAME = u

build: ## Build the image
	podman build -t $(IMAGE_NAME) .

create: ## Create and start the container in the background
	podman run -itd --name $(CONTAINER_NAME) $(IMAGE_NAME)

run: ## Jump into the existing container with tmux
	podman exec -it $(CONTAINER_NAME) tmux

rm: ## Force remove the container
	podman rm -f $(CONTAINER_NAME)

clean: rm ## Clean up both container and image
	podman rmi $(IMAGE_NAME)

rebuild: clean build create ## Full reset: wipe everything and start fresh
