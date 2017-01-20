#!/bin/bash
	tail -n +3 "$0" | ssh ubuntu@138.68.64.15; exit;


	# Prevent errors
	set -e


	# Send apt-get update, upgrade, install ngnix
	echo " ... apt-get update..."
	sudo apt-get update
	echo " ... apt-get upgrade..."
	sudo apt-get upgrade
	echo " ... apt-get install nginx..."
	sudo apt-get install nginx


	# Set permission to html folder
	# chown ubuntu:ubuntu .
	cd /var/www/html


	# TODO: pull if exist, please
  
  # Cette commande permet à l'administrateur système d'accorder à certains utilisateurs la possibilité de lancer une commande en tant qu'administrateur, ou comme autre utilisateur. 
  
	sudo rm -Rf webcloud
	sudo git clone https://github.com/NicolasDeltheil/webcloud
