FROM crystallang/crystal:latest

WORKDIR /app
ADD . /app
RUN crystal build src/crystal-web-server.cr --release

EXPOSE 80

CMD "./crystal-web-server"
