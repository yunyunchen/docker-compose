FROM golang:1.8

RUN mkdir -p /go/src/smartLock
WORKDIR /go/src/smartLock

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#RUN cp -rp /go/src/smartLock/docker/oath/so/locka/* /usr/local/lib
#RUN cp /go/src/smartLock/docker/oath/so/lock-x86_64.conf  /etc/ld.so.conf.d

COPY oath/so/ /usr/local/lib/
COPY oath/liboath/ /usr/local/include/liboath/
COPY oath/lock-x86_64.conf /etc/ld.so.conf.d

RUN ln -s /usr/local/lib/liboath.so.0 /usr/local/lib/liboath.0.so
RUN ldconfig

# this will ideally be built by the ONBUILD below ;)
ENTRYPOINT go install && smartLock logs >> docker_logs/logs.log