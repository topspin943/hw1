# Set base image to Ubuntu 22.04

FROM ubuntu:22.04

#Install needed packages for bowtie

RUN apt-get update && apt-get install -y build-essential\
apt-utils\
python3\
unzip\
zlib1g-dev\
wget\
make

#download adn extract bowtie
RUN wget https://github.com/BenLangmead/bowtie/releases/download.v1.3.1/bowtie-1.3.1-linux-x86_64.zip\
&& unzip bowtie-1.3.1-linux-x86_64.zip-d/ \
&& rm bowtie-1.3.1-linux-x86_64.zip \
&& cd bowtie-1.3.1-linux-x86_64 \
&& make

#set working directory to Bowtie Bianary directory
WORKDIR /app
