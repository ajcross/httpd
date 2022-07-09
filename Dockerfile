FROM docker.io/httpd:latest
#COPY index.html /usr/local/apache2/htdocs/index.html
RUN sed -i "s/Listen 80/Listen 8080/" /usr/local/apache2/conf/httpd.conf && chmod 777 /usr/local/apache2/logs
EXPOSE 8080/tcp
