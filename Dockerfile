FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY config/rollmx.conf /etc/nginx/nginx.conf

VOLUME /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]
