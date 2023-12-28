FROM ubuntu:latest


RUN apt update && apt install -y curl
COPY . /home
WORKDIR /home
RUN ./bin/setup.sh && ./bin/mitamae local recipes/linux.rb

