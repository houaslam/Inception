all :
	docker compose -f srcs/docker-compose.yml up --build -d

clean :
	docker compose -f srcs/docker-compose.yml down

re : clean all

push :
	git add .
	git commit -m "Inception"
	git push