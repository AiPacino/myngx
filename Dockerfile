FROM ubuntu:latest

EXPOSE 80 443

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nginx

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
        && ln -sf /dev/stderr /var/log/nginx/error.log


RUN rm /etc/nginx/sites-enabled/default

COPY ./config/*.conf /etc/nginx/conf.d/

# RUN service nginx restart

ENTRYPOINT  nginx -g 'daemon off;'
