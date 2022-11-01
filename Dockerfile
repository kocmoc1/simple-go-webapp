FROM golang:1.16-alpine
COPY app/ /app
WORKDIR /app
RUN chmod -R 777 /app
RUN go mod download
RUN ls /app/templates/
RUN go build -o /app/website

EXPOSE 8080

CMD [ "/app/website" ]