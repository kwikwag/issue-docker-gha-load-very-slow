FROM alpine:3.18.4
RUN apk add stress-ng
RUN stress-ng --timeout 45s --cpu 8 --io 4 --vm 2 --fork 4 & \
  head -c2000000000 /dev/urandom > dummy
CMD [ "wc", "-c", "dummy" ]
