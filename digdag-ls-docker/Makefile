setup:
	mkdir -p tmp/var/suna/bako

build:
	docker-compose -f docker-compose.master.yml build
bash:
	docker-compose -f docker-compose.master.yml run --rm app bash

digdag:
	digdag run --rerun digdag-ls.dig -p ENV=${ENV}
