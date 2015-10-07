# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang
RUN git clone https://github.com/elastic/logstash-forwarder.git /go/src/github.com/elastic/logstash-forwarder
RUN cd /go/src/github.com/elastic/logstash-forwarder && go build -o logstash-forwarder
CMD /go/src/github.com/elastic/logstash-forwarder/logstash-forwarder
