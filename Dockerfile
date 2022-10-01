FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dotnet.zip
RUN cp -rvf digital-agency-website-template/* .
RUN service apache2 start
EXPOSE 80
