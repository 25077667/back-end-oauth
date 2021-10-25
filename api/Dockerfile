FROM golang:alpine as api-builder
LABEL MAINTAINER="zxc25077667@pm.me"
LABEL AUTHOR="25077667/SCC"

WORKDIR /src
COPY ["./main.go", "go.mod", "go.sum", "/src/"]
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o main main.go
