FROM golang:1.23.6

WORKDIR /app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /my-app main.go

CMD [ "/my-app" ]