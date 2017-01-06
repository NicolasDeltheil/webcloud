# webcloud

Cours du 09/12/2016 

Lignes de commande: 

ls /etc 
man ls
find /etc/ -name “*conf” -type f
ls /etc/apache2/
telnet localhost:80
apt-get upgrade	 	 	 	


Regex : expression régulière, une chaîne de caractères, que l’on appelle parfois un motif, qui décrit, selon une syntaxe précise, un ensemble de chaînes de caractères possibles.

SAAS: Software as a service
PAAS: Platform
CAAS: Computer
IAAS: Infrastructure
Exemple: Gmail

Cloud: 


Ubuntu = distribution= façon de construire un système d’exploitation

Questions : 



Evaluation Individuelle: Créer un dépôt de code sur Github, créer un mini site web (index.html + permettre de le déployer)…?
But: Automatisation du déploiement
→ une ligne de commande qui envoie le fichier zip

Services auxquels on peut faire appel : Digital ocean (on crée une MV; Attention payant 5$ par mois environ), Debian 8, Ubuntu 16, 

Login du Prof sur Github: bzg

Nom du dépôt: webcloud

READ ME.md: on accepte lors de la création du dépôt. 

SSH Secure Shell

Clé publique :

/home/[user]/.ssh/id_rsa.pub

utiliser ssh-keygen


Instructions pour l’utilisateur : 

Il faut que la personne soit sur Debian 8 ou Ubuntu 16 (Bien penser à implémenter les mises à jour dans les instructions :

Commande pour le devoir :
apt-get update
	upgrade
	install nginx
/etc/init.d/nginx start
cp index.html vers le répertoire dans lequel nginx va chercher le site web.

Il faut que tu te connectes sur le ssh root@[adresse.ip]
Tu arrives dans le root et là tu fais 2 commandes :
1°) ~$ git clone https://github.com/[user]/webcloud

Dans ce dépôt il y aura les instructions pour pouvoir lancer le script et créer un site web 

2°) ~$ ./init shell pour exécuter un script que l’on aura préparé

init.sh
cp index.html

Pré requis pour la suite :

Installer NGINX sur sa VM.
lancer le ssh serveur web init.d/nginx blabla

N.B : Lorsqu’on travaille ces lignes de commande et ce projet, au lieu de prendre ses notes sur google docs, les prendre sur GitHub pour qu’il voit ce qu’on fait.
