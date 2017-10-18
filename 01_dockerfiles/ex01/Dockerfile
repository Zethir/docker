FROM debian:latest

RUN apt-get update && apt-get install -y bzip2 wget && rm -rf /var/lib/apt/lists/* \
	&& wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 -O /tmp/teamspeak.tar.bz2 \
	&& tar jxf /tmp/teamspeak.tar.bz2 -C /opt \
	&& mv /opt/teamspeak3-server_* /opt/teamspeak \
	&& rm /tmp/teamspeak.tar.bz2 \
	&& rm -rf /var/lib/apt/lists/*

RUN groupadd -g 503 teamspeak \
    && useradd -u 503 -g 503 -d /opt/teamspeak teamspeak \
    && mkdir /data \
    && chown -R teamspeak:teamspeak /opt/teamspeak /data

USER teamspeak

EXPOSE 9987/udp 10011 30033

WORKDIR /opt/teamspeak

ENTRYPOINT ["./ts3server_minimal_runscript.sh", "createinifile=1"]
