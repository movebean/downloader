FROM python:2.7-alpine3.11

RUN apk add --no-cache --virtual .build-deps && \
        apk add build-base && \
        apk del .build-deps && \
        rm -rf /var/cache/apk/*

RUN pip install coscmd

COPY ["./download.sh", "/target/download.sh"]

WORKDIR /target

ENTRYPOINT ["/bin/sh"]

CMD ["download.sh"]
