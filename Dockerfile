FROM python:3.10-slim-buster

WORKDIR app/src

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH=.

COPY ./src/requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY ./src/nlp/ ./nlp/



