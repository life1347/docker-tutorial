# Visit follwing link for more details
# EN:    https://tachingchen.com/blog/docker-multi-stage-builds/
# ZH_TW: https://tachingchen.com/tw/blog/docker-multi-stage-builds/

FROM alpine AS base
RUN apk add --no-cache curl wget

FROM golang:1.9.2 AS go-builder
WORKDIR /go
COPY *.go /go/
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

FROM base
COPY --from=go-builder /go/main /main
CMD ["/main"]