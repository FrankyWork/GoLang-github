FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY main.go /app

RUN go build -o her main.go
RUN chmod +x her

CMD ["/app/her"]