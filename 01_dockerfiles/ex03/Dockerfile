FROM golang

RUN apt-get update && apt-get install -y libpam0g-dev \
	&& mkdir -p $GOPATH/src/github.com/gogits \
	&& cd $GOPATH/src/github.com/gogits \
	&& git clone --depth=1 -b develop https://github.com/gogits/gogs \
	&& cd gogs && go get ./... \
	&& go get -u -tags "sqlite redis memcache" github.com/gogits/gogs \ 
	&& go build -tags "sqlite redis memcache" \
	&& adduser --disabled-login --gecos 'Gogs' git \
	&& chmod -R a+rw .

WORKDIR $GOPATH/src/github.com/gogits/gogs
EXPOSE 3000
CMD su git -c "./gogs web"
