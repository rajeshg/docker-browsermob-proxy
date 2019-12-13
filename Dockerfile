FROM java:8-jre-alpine
MAINTAINER Rajesh Gollapudi "gollapudi.rajesh@gmail.com"

ADD https://github.com/lightbody/browsermob-proxy/archive/browsermob-proxy-2.1.5.tar.gz /home/
WORKDIR /home
RUN tar -zxvf browsermob-proxy-2.1.5.tar.gz && rm browsermob-proxy-2.1.5.tar.gz
EXPOSE 8080-8200
CMD /home/browsermob-proxy-2.1.5/bin/browsermob-proxy