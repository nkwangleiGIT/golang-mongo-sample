FROM google/golang
MAINTAINER tenxcloud

# Build app
WORKDIR /gopath/app
ENV GOPATH /gopath/app
ADD . /gopath/app/

RUN ping -c 5 golang.org
RUN go get golang.org/x/net/html

EXPOSE 80
CMD ["/gopath/app/bin/golang-mongo-sample"]
