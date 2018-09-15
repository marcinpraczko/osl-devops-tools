# ============================================================================
# Self-documented makefile
# ============================================================================

VERSION := $(shell cat VERSION)

.PHONY: usage
usage: ## Show this help message
	@echo 'usage: make [target] ...'
	@echo
	@echo 'VERSION: ${VERSION}'
	@echo
	@echo 'Targets:'
	@echo '========'
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'


.PHONY: download-bin-files
download-bin-files: ## Download binary files which are required to be added to docker images
	cd tools && ./download_bin_files.sh


.PHONY: docker-build-all
docker-build-all: ## Build all docker images
docker-build-all: docker-build-init docker-build-stable


.PHONY: docker-build-init
docker-build-init: ## Build docker initial image
	./build_docs.sh


.PHONY: docker-build-stable
docker-build-stable: ## Build docker stable image (with docs and NGINX)
	docker build -t osl/sphinx-tools:${VERSION} .
