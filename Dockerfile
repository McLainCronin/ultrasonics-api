FROM python:3.13-alpine

COPY . /app
WORKDIR /app

ENV FLASK_APP=ultrasonics_api USE_REDIS=False

RUN pip install -r requirements.txt 

EXPOSE 3000

ENTRYPOINT ["./app.sh"]
