FROM ubuntu:22.04 as base

RUN apt update
RUN apt install -y git
RUN git clone --recursive https://github.com/vladmd22/softtvary_13.git

WORKDIR /softtvary_13

FROM base as build
RUN chmod +x install.sh
RUN chmod +x run.sh
RUN ./install.sh
