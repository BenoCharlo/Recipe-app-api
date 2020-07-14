FROM python:3.7-alpine
LABEL maintainer="BenoCharlo Corp"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements
RUN pip install -r /requirements

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D beno
USER beno