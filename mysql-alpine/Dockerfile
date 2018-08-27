FROM alpine:latest
MAINTAINER AppleShan <apple.shan@gmail.com>

# Define working directory.
WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh

# Add MySQL configuration
COPY config/ /etc/mysql/conf.d/

RUN echo http://mirrors.aliyun.com/alpine/v3.8/main > /etc/apk/repositories; \
        echo http://mirrors.aliyun.com/alpine/v3.8/community >> /etc/apk/repositories

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*

# Expose ports.
EXPOSE 3306

# Define default command.
CMD ["/startup.sh"]
