FROM golang:1.9.1 as builder
RUN set -xe && \
    go get -u -d github.com/github/hub && \
    cd /go/src/github.com/github/hub && \
    git remote add jsternberg git://github.com/jsternberg/hub && \
    git pull jsternberg master && \
    go install github.com/github/hub

FROM buildpack-deps:stretch-scm
COPY --from=builder /go/bin/hub /usr/bin/hub
COPY hub.sh /etc/profile.d/hub.sh
