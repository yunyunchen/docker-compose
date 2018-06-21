FROM golang:1.9

RUN mkdir -p /go/src/leibao
WORKDIR /go/src/leibao

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# this will ideally be built by the ONBUILD below ;)
ENTRYPOINT go install && leibao logs >> logs/a.log
