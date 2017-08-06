FROM docker.io/ubuntu:14.04

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y vlc vlc-data browser-plugin-vlc && \
    apt-get install -y vlc-plugin-pulse && \
    apt-get install -y ubuntu-restricted-extras && \
    apt-get install -y libdvdcss2 libdvdnav4 libdvdread4 git && \
    apt-get install expect wget
    
RUN cd /tmp
RUN git clone https://github.com/h3dema/ubuntu-vlc-server.git
RUN cd ubuntu-vlc-server
RUN mkdir /VIDEOS
RUN mv load_videos.sh /VIDEOS
RUN mv ativa_vlm.sh

RUN /VIDEOS
RUN chmod 755 ativa_vlm.sh
RUN chmod 755 load_videos.sh
RUN wget -c https://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_480p_stereo.avi
RUN wget -c https://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_stereo.avi
RUN wget -c https://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_1080p_stereo.avi

RUN ativa_vlm.sh &
