FROM ubuntu:24.04
RUN apt update && \
apt upgrade -y && \
apt install -y python3


ENV PZTORRENT=https://archive.org/download/gog_project_zomboid_41_78_16_60901_linux/gog_project_zomboid_41_78_16_60901_linux_archive.torrent

COPY get.py /opt/get.py

RUN cd /opt/ && \
python3 get.py