gen-certs:
	@sh ./.scripts/gen-certs.sh

up:
	@docker compose --env-file .env up -d --build --force-recreate

down:
	@docker compose --env-file .env down

init: gen-certs add-host up

add-host:
	@sh ./.scripts/add-host.sh
