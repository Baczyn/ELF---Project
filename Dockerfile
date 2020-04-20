FROM debian

LABEL Name=Projekt Version=0.0.1
RUN apt-get -y update && apt-get install -y
RUN apt-get install hexedit -y
RUN apt-get install ltrace -y
RUN apt-get install binutils -y
RUN apt-get install gdb -y
RUN apt-get install zip unzip -y
RUN echo "deb http://security.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    libssl1.0.0

COPY /Zadania /Zadania 
WORKDIR  /Zadania


