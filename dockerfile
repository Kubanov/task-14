FROM golang:1.18
RUN mkdir /app
ADD . /app/
WORKDIR /app
COPY main.go .
COPY templates/web.html .
RUN go build -o main main.go 
EXPOSE 90
CMD [ "./main" ]