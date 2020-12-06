FROM alpine:latest

RUN apk --no-cache add curl

RUN apk --no-cache add gzip

COPY install_elm.sh .

RUN chmod 777 install_elm.sh

RUN ./install_elm.sh

CMD ["elm"]
