FROM ubuntu:22.04
RUN apt update && apt upgrade -y
RUN apt install -y wget tar nginx
COPY ./declab /etc/nginx/sites-available/
CMD wget $LINK_EXPLORER ; tar -xvf explorer.tar.gz && rm explorer.tar.gz ; ln -s /etc/nginx/sites-available/declab /etc/nginx/sites-enabled/ ; service nginx start; sleep infinity
