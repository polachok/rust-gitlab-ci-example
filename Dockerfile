FROM ubuntu:16.04
RUN apt-get update && apt-get -y -qq install libssl1.0.0 && apt-get clean
ADD target/release/my-service /usr/sbin/my-service

EXPOSE 5000
VOLUME /etc/my-service
ENTRYPOINT [ "/usr/sbin/my-service", "-c", "/etc/my-service/config.toml" ]
