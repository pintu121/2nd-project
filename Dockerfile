FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN cd /var/www/html/
RUN echo "wellocome" >index.html
RUN service apache2 start
