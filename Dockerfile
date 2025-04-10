FROM ubuntu:24.04
RUN apt update && \
apt upgrade -y && \
apt install -y python3 \
openjdk-21-jre \
gstreamer1.0-libav \
libegl1 \
libglapi-mesa \
mesa-vulkan-drivers \
mesa-utils \
inxi \
gstreamer1.0-plugins-base \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-ugly \
gstreamer1.0-plugins-bad \
ffmpeg \
sox \
twolame \
vorbis-tools \
lame \
faad \
mencoder

ENV PZTORRENT=https://archive.org/download/gog_project_zomboid_41_78_16_60901_linux/gog_project_zomboid_41_78_16_60901_linux_archive.torrent

COPY get.py /opt/get.py

RUN cd /opt/ && \
python3 get.py