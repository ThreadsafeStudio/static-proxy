FROM nginx

ADD nginx.conf /etc/nginx/nginx.conf.template
ADD start.sh /
RUN chmod a+x /start.sh

CMD ["bash", "start.sh"]
