FROM httpd

#mise à jour de la liste des pacquets
RUN apt update
# mise à jour des pacquets
RUN apt upgrade -y -q


#copy des fichiers u dossier ./web dans /var/www/
COPY ./web /usr/local/apache2/htdocs/

RUN echo "installation terminée, démarrage du service apache2"

# exposition du port container
EXPOSE 80


# commande à executer au lancement container
#CMD [ "systemctl", "start", "apache2" ]