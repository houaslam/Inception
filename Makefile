# N_IMAGE = nginx
# M_IMAGE = mariaDB
# W_IMAGE = wordpress

# all : ${N_IMAGE}

# ${N_IMAGE} :
# 	echo "starting"
# 	sudo docker build -t ${N_IMAGE} nginx/.
# 	sudo docker run -d -p 80:80 --name nginix-run ${N_IMAGE}

# push :
# 	git add .
# 	git commit -m cube
# 	git push

N_IMAGE = nginx
M_IMAGE = mariaDB
W_IMAGE = wordpress

all : ${N_IMAGE} ${M_IMAGE} ${W_IMAGE}

${N_IMAGE} :
	echo "building nginx image"
	sudo docker build -t ${N_IMAGE} nginx/.
	sudo docker run -d -p 80:80 --name nginix-run ${N_IMAGE}

${M_IMAGE} :
	echo "building mariaDB image"
	# Add the necessary build steps for MariaDB

${W_IMAGE} :
	echo "building wordpress image"
	# Add the necessary build steps for WordPress

push :
	git add .
	git commit -m "cube"  # Corrected the commit message
	git push
