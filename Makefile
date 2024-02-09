all :
	docker compose -f srcs/docker-compose.yml up --build -d
clean :
	docker compose -f srcs/docker-compose.yml down -v
fclean :
	docker compose -f srcs/docker-compose.yml stop
	docker system prune -a

re : clean all
