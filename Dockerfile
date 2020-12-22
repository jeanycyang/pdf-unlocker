FROM alpine:3.12.3
RUN apk update && apk upgrade
RUN apk add --no-cache qpdf
RUN mkdir -p /unlock-pdf
WORKDIR /pdf
COPY ./unlock-pdf.sh .
ENTRYPOINT ["sh", "./unlock-pdf.sh"]

