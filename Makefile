all :
	docker compose -f srcs/docker-compose.yml up --build -d
clean :
	docker compose -f srcs/docker-compose.yml down -v
stop :
	docker compose -f srcs/docker-compose.yml stop
fclean :
	docker system prune -a

re : clean all

push :
	git add .
	git commit -m "Inception"
	git push