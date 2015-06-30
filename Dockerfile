FROM google/golang
MAINTAINER tenxcloud

# Build app
WORKDIR /gopath/app
ENV GOPATH /gopath/app
ADD . /gopath/app/

go get golang.org/x/net/html

EXPOSE 80
CMD ["/gopath/app/bin/golang-mongo-sample"]
