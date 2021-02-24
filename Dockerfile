FROM ubuntu:20.04

RUN apt-get update && apt-get install -y x11vnc xvfb
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]