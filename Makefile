all :
	docker compose -f srcs/docker-compose.yml up -d

terminal:
	docker build ./srcs/requirements/nginx -t nginx_im
	docker run --name web nginx_im
	echo "done"

web:
	docker build ./srcs/requirements/nginx -t nginx_im
	docker run -it --rm -d -p 8080:80 --name web nginx_im
	echo "done"

clean :
	docker compose -f srcs/docker-compose.yml down
	docker system prune -a
re : clean all

push :
	git add .
	git commit -m "Inception"
	git push