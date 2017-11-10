FROM ubuntu:latest

MAINTAINER Leon Berenschot <leipeleon@gmail.com>

COPY loadtest.sh /app/loadtest.sh

CMD ["/app/loadtest.sh"]
