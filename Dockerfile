FROM python:3
LABEL version="0.9"
LABEL maintainer='jjmerelo@gmail.com'

WORKDIR /usr/src/app

ADD . ./
RUN pip install --no-cache-dir -r requirements.txt

CMD gunicorn -b 0.0.0.0:80 hitor:app --log-config gunicorn_logging.conf 

EXPOSE 80
