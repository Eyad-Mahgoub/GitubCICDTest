FROM ubuntu:latest

LABEL "Author" = "Eyad"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y apache2
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

WORKDIR /var/www/html/

COPY src/ /var/www/html/


EXPOSE 80