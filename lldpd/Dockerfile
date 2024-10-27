ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache lldpd

# Copy data for add-on
COPY run.sh /

CMD ["/run.sh"]
