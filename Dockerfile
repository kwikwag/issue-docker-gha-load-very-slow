FROM alpine:3.18.4
RUN wget -O dummy https://github.com/microsoft/AirSim/releases/download/v1.8.1-windows/AirSimNH.zip
CMD [ "wc", "-c", "dummy" ]
