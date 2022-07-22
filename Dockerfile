FROM debian

RUN apt update -y 
RUN apt-get install nginx -y
RUN apt-get install openssh-server -y
RUN apt-get install tor -y

COPY entrypoint.sh /
RUN chmod u+x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
