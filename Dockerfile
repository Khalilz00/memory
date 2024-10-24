# Utilise une image NGINX officielle
FROM nginx:latest

# Met à jour les packages et installe le package "file"
RUN apt-get update && apt-get install -y file

# Supprime la configuration par défaut de NGINX et copie notre fichier de configuration
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copie les fichiers HTML dans le répertoire /var/concentration/html/
COPY html/ /var/concentration/html/

# Expose le port 80 pour accéder au site
EXPOSE 80

# Commande pour démarrer le serveur NGINX
CMD ["nginx", "-g", "daemon off;"]
