.PHONY: in exec

in:
	docker-compose run --rm web sh

exec:
	docker-compose exec web sh