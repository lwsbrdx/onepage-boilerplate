gen-certs:
	@sh ./.scripts/gen-certs.sh

up:
	@docker compose --env-file .env up -d --build --force-recreate

down:
	@docker compose --env-file .env down

init: gen-certs up
