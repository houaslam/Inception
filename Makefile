N_IMAGE = nginx
M_IMAGE = mariaDB
W_IMAGE = wordpress

all : ${N_IMAGE}

${N_IMAGE} :
	echo "starting"
	sudo docker build -t ${N_IMAGE} nginx/.
	sudo docker run -d -p 80:80 --name nginix-run ${N_IMAGE}

push :
	git add .
	git commit -m cube
	git push
