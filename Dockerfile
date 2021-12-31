FROM nginx:1.21.4

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

RUN echo '<?php echo "Nginx root' >> /var/www/html/index.php
