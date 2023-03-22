FROM golang:latest

WORKDIR /app

COPY main.go .

EXPOSE 8080

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o api main.go

CMD ["./api"]
