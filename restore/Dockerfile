FROM alpine:3.7

RUN apk add --no-cache bash
RUN apk add curl

COPY restore.sh .

RUN chmod +x ./restore.sh 

COPY wait-for-it.sh .

RUN chmod +x wait-for-it.sh

ENTRYPOINT ["sh", "./restore.sh"]
