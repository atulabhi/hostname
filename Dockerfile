#Binary building stage
FROM golang:1.15.7 as builder
WORKDIR $GOPATH/src/github.com/atulabhi/hostname
COPY . $GOPATH/src/github.com/atulabhi/hostname
RUN CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o hostnameapp .

# Image building stage
FROM alpine
COPY --from=builder /go/src/github.com/atulabhi/hostname/hostnameapp /
CMD ["/hostnameapp"]
