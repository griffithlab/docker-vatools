FROM python:3.11-bullseye
MAINTAINER Susanna Kiwala <susanna.kiwala@wustl.edu>

LABEL \
    description="Image containing the vatools python package" \
    version="6.0.0"

RUN apt-get update -y && apt-get install -y \
    apt-utils \
    python3 \
    python3-pip \
    tcsh \
    gcc \
    build-essential \
    zlib1g-dev \
    gawk

RUN pip3 install vatools==6.0.0
