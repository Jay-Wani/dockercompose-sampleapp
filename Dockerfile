FROM gliderlabs/alpine:latest
MAINTAINER Junaid <junaid.w@outlook.com>
LABEL Description="Creating the build image for the Docker-Compose Sample app."

ADD . /sampleapp
WORKDIR /sampleapp
RUN apk-install python \
    python-dev \
    py-pip &&\
    pip install -r requirements.txt
CMD ["python", "app.py"]
