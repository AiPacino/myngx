FROM nginx:latest

RUN rm /etc/nginx/conf.d/*.conf

COPY    ./config/rollmx.conf /etc/nginx/conf.d/

ENTRYPOINT  nginx -g 'daemon off;'

#RUN rm -rf /etc/nginx/conf.d/default.conf
#
#COPY config/rollmx.conf /etc/nginx/nginx.conf
#
#VOLUME /etc/nginx/conf.d
#
#CMD ["nginx", "-g", "daemon off;"]
