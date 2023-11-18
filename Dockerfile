FROM alpine:3.18.4

RUN head -c500M /dev/zero > dummy
CMD [ "wc", "-c", "dummy" ]