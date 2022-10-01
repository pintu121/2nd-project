FROM centos:latest
RUN yum install -y httpd \
   zip \
   unzip
RUN 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dotnet.zip
RUN cp -rvf digital-agency-website-template/* .
RUN rm -rf dotnet.zip digital-agency-website-template
CMD ["/usr/sbin/httpd","D","foreground"]
EXPOSE 80
