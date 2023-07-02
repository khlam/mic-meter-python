FROM 3.9.17-slim-bullseye

ARG DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install libasound-dev -y

WORKDIR /app

COPY main.py .

RUN main.py

#https://moduliertersingvogel.de/2018/11/07/measure-loudness-with-a-usb-micro-on-a-raspberry-pi/