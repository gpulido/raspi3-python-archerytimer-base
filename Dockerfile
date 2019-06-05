FROM balenalib/raspberrypi3-python:3.7.3-build as client-app
LABEL authors="Gabriel Pulido"

RUN [ "cross-build-start" ]

WORKDIR /usr/src/server

COPY requirements.txt .

RUN pip install --pre rx --no-cache-dir --disable-pip-version-check && \
    pip install -r requirements.txt --no-cache-dir --disable-pip-version-check 

RUN [ "cross-build-end" ]


