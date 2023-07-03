.PHONY: postgres adminer migrate
postgres:
	docker run --rm -ti --network postgres-network -e POSTGRES_PASSWORD=secret postgres

adminer:
	docker run --rm -ti -p 8080:8080 adminer

migrate:
	migrate -source file://migrations \
	-database postgres://postgres:secret@localhost:5432/postgres?sslmode=disable up