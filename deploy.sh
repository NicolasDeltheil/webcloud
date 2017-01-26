#Script de déploiement. 


# !/bin/bash
#connection 
tail -n +3 "S0" | ssh root@138.68.64.15 ; exit

# Prevent errors
set -eu

#Mise à jour de la VM
apt-get update
apt-get upgrade

#installation du serveur web et de l'outil git
# Send apt-get update, upgrade, install ngnix
apt-get install nginx -y
apt-get install git -y

#placement dans le répertoire /var/www/html/
cd /var/www/html/

#importation du projet github
# Cette commande permet à l'administrateur système d'accorder à certains utilisateurs la possibilité de lancer une commande en tant qu'administrateur, ou comme autre utilisateur. 
  
	sudo rm -Rf webcloud
	sudo git clone https://github.com/NicolasDeltheil/webcloud

#copie de index.html
cp index.html Webcloud

#accord de tous les droit aux utilisateurs su les fichier

cd Webcloud 
chmod +rwx deploy.sh
chmod +rwx index.html
