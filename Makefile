all :
	docker compose -f srcs/docker-compose.yml up -d

clean :
	docker compose -f srcs/docker-compose.yml down
	docker system prune -a
re : clean all

push :
	git add .
	git commit -m "Inception"
	git push