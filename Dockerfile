FROM node:12

WORKDIR /tmp
RUN apt update && apt install -y lsof libxinerama1 libfontconfig1 libdbus-glib-1-2 libcairo2 libcups2 libglu1-mesa libsm6 unzip
# Download LibreOffice
RUN wget https://download.documentfoundation.org/libreoffice/stable/7.5.1/deb/x86_64/LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz -O libo.tar.gz \
    && tar -zxvf libo.tar.gz
# Install LibreOffice
WORKDIR /tmp/LibreOffice_7.5.1_Linux_x86-64_deb/DEBS
RUN dpkg -i *.deb

WORKDIR /home/node
