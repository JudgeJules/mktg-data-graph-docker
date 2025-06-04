up:           ## Spin up everything in detached mode
	docker compose up -d

down:         ## Stop & remove containers
	docker compose down

logs:         ## Tail all logs
	docker compose logs -f --tail=100

shell:        ## Quick DuckDB shell into the warehouse
	docker compose exec consumer_faust duckdb /app/data/warehouse.duckdb

