setup:
	mkdir -p tmp/var/suna/bako

build:
	docker-compose -f docker-compose.master.yml build
bash:
	docker-compose -f docker-compose.master.yml run --rm app bash

digdag:
	digdag run --rerun digdag-ls.dig -p SLACK_INCOMING_WEBHOOK_URL=${SLACK_INCOMING_WEBHOOK_URL} -p ENV=${ENV}
