FROM selenium/standalone-chrome:3.14.0-europium

USER root
RUN apt-get update && apt-get install -y ffmpeg 

RUN apt-get install -y fonts-dejavu*

COPY entrypoint.sh /entrypoint.sh

USER seluser

ENTRYPOINT ["/entrypoint.sh"]

