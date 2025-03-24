app_name = ultrasonics-api

build:
	@docker build -t $(app_name) .

run:
	docker run --detach --name $(app_name) -p 3000:3000 $(app_name)
