FROM docker.io/ubuntu:14.04

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y vlc vlc-data browser-plugin-vlc && \
    apt-get install -y vlc-plugin-pulse && \
    apt-get install -y ubuntu-restricted-extras && \
    apt-get install -y libdvdcss2 libdvdnav4 libdvdread4
    
RUN /tmp
