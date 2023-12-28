FROM amazonlinux:2023


COPY . /home
WORKDIR /home
RUN ./bin/setup.sh && ./bin/mitamae local recipes/linux.rb
