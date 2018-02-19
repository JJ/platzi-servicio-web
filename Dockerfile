FROM python:3

WORKDIR /usr/src/app

ADD . ./
RUN pip install --no-cache-dir -r requirements.txt


CMD [ "gunicorn", "-b 0.0.0.0:80", "hitor:app", "--log-config gunicorn_logging.confhug"]

EXPOSE 80
