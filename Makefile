all :
	docker compose -f srcs/docker-compose.yml up --build -d
clean :
	sudo rm -rf /home/houaslam/data/wordpress/*
	sudo rm -rf /home/houaslam/data/mariadb/*
	docker compose -f srcs/docker-compose.yml down -v
fclean : clean
	docker compose -f srcs/docker-compose.yml stop
	docker system prune -af

re : clean all
