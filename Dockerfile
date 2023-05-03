FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install -y nginx zip curl git

RUN echo "daemon off;" >>/etc/nginx/nginx.conf

RUN git clone https://github.com/naklecha/doodleship.git

RUN mv doodleship/* /var/www/html/ 

RUN cd /var/www/html && mv DoodleShip.html index.html

RUN ls -la

EXPOSE 80

CMD ["/usr/sbin/nginx" ,"-c", "/etc/nginx/nginx.conf"]
