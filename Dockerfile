FROM debian:unstable-slim

RUN apt update

RUN apt upgrade -y

RUN apt install -y icecast2 sudo --no-install-recommends

CMD [ "sudo", "-u", "icecast2", "icecast2",  "-c", "/etc/icecast2/icecast.xml" ]