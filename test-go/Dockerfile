FROM golang:1.24.2 AS builder

COPY . /src
WORKDIR /src
RUN go build -o bin/server ./test-go/cmd/main.go

FROM alpine:latest AS production

RUN apk --no-cache add ca-certificates
COPY --from=builder /src/bin /app

WORKDIR /app
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
CMD ["./server"]