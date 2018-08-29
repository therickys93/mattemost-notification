FROM alpine
RUN apk update && apk upgrade
RUN apk add curl jq zip
WORKDIR /notify
ADD upload.sh /notify/upload.sh