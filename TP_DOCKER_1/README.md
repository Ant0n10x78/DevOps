
3.
Commande pour run nginx sous le port 80:
docker run --name some-nginx -p 80:80 -v C:/Users/Antonio/Desktop/Ynov/DevOps/DevOps/TP_DOCKER_1/html/index.html:/usr/share/nginx/html -d nginx


Commande pour cp le fichier index.html:
docker cp C:/Users/Antonio/Desktop/Ynov/DevOps/DevOps/TP_DOCKER_1/html/index.html 5c86e136f702879d1db83ceb054b421b03126e99277c374d7fe08502bf314d15:/usr/share/nginx/html


4.
On créer un docker file dans le rep .:
Par la suite on build le dockerfile:
docker build -t dockerfile .

On peut ensuite lancer un conteneur avec des parametres prédéfinis grace au docker file:
docker run -it -d --name dockerfile_nginx dockerfile  


Avantage de la méthode 3.:
-


Avantage de la méthode 4.:
-Permet de d'executer une image de docker pre-configurer avec le dockerfile
