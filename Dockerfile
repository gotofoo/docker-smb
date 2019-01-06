FROM alpine

MAINTAINER GoToFoo <admin@gotofoo.eu>

RUN \
	apk add --no-cache samba && \
	mkdir -p /data/private && \
	cp /etc/samba/smb.conf /data/ && \
	sed -i '/\[global\]/a private dir = /data/private' /data/smb.conf && \
	touch /data/users

COPY init /
RUN chmod +x /init

COPY bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*

CMD /init
