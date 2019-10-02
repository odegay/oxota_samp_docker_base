#Base docker contanier for SAMP server with x86 support
FROM debian:latest

RUN apt-get update && apt-get upgrade -y
#installing apt utils
RUN apt-get install -y apt-utils
RUN apt-get update -y

RUN dpkg --add-architecture i386

RUN apt-get update -y

RUN apt-get install libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386 lib32stdc++6 -y

RUN apt-get install zip bash tar unzip screen wget -y

RUN  apt-get update -y

#INSTALL JAVA RUNTIME
RUN apt-get install default-jre:i386 -y
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-i386
ENV LD_LIBRARY_PATH=.:/usr/lib/jvm/java-11-openjdk-i386/lib:/usr/lib/jvm/java-11-openjdk-i386/lib/client:/usr/lib/jvm/java-11-openjdk-i386/lib/server:/usr/local/lib

#update
RUN apt-get update && apt-get upgrade -y

#CMD ["/bin/bash"]





