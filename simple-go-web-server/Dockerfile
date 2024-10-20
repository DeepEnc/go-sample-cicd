FROM golang:1.23 AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o simple-go-web-server .


FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/simple-go-web-server .

EXPOSE 8080

HEALTHCHECK CMD curl --fail http://localhost:8080/health || exit 1

CMD ["./simple-go-web-server"]
