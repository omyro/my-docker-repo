# Dockerfile to containerize an apache web application
# Base image
FROM centos:7

# Description
LABEL description="Dockerfile to containerize an apache web application"
# update all packages
RUN yum -y update

# install apache
RUN yum install -y httpd

# port on which the app should listen on
EXPOSE 80

# systemctl start httpd
# CMD or ENTRYPOINT
ENTRYPOINT [ "/usr/sbin/httpd" ]

# Run the container in the background
CMD ["-D", "FOREGROUND"]