FROM golang:1.26.0-alpine3.23

RUN apk add --no-cache git ca-certificates

WORKDIR /workspace

COPY go.mod ./
RUN go mod download

COPY . .

CMD ["go", "build", "-trimpath", "./..."]
