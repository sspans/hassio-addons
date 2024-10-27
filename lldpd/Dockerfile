ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache lldpd

COPY run.sh /

CMD ["/run.sh"]
