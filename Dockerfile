FROM alpine:3.18.4
RUN wget -O - https://github.com/microsoft/AirSim/releases/download/v1.8.1-windows/AirSimNH.zip | split -a3 -b1000000 - dummy.
CMD [ "wc", "-c", "dummy.*" ]
