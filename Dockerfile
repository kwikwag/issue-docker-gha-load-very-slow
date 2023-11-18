FROM alpine:3.18.4

RUN head -c500000000 /dev/urandom > dummy
CMD [ "wc", "-c", "dummy" ]