# FROM ubuntu

# # Install Nginx.
# RUN set -x \
#   apt-get update \
#   apt-get install nginx

# # Define working directory.
# WORKDIR /etc/nginx

# # Define default command.
# CMD systemctl status nginx
# CMD systemctl start nginx
# COPY . /html/test.html

# # Expose ports.
# EXPOSE 80
# EXPOSE 443

FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/