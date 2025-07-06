FROM ubuntu:latest
MAINTAINER Tuan Thai "tuanthai@example.com"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv apt-utils
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv venv
RUN /flask_app/venv/bin/pip install -r requirements.txt
ENTRYPOINT ["/flask_app/venv/bin/python3"]
CMD ["flask_docker.py"]
