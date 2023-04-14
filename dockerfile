FROM golang:1.18

WORKDIR /app

COPY  ./task 14 ./

RUN go build -o main main.go 

EXPOSE 90

CMD [ "./main" ]

