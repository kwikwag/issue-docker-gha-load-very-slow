FROM alpine:3.18.4

RUN head -c2000000000 /dev/urandom > dummy
CMD [ "wc", "-c", "dummy" ]