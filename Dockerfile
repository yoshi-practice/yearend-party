
FROM golang:alpine

RUN apk update && apk add vim git

RUN go get -u github.com/gin-gonic/gin \
    && go get -u github.com/jinzhu/gorm \
    && go get -u github.com/jinzhu/gorm/dialects/mysql

ADD . /go/src/year-end-party

WORKDIR /go/src/year-end-party/

EXPOSE 8080

CMD ["go", "run", "main.go"]
