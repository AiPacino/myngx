FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY config /etc/nginx/conf.d

VOLUME /etc/nginx/conf.d