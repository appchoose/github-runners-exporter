FROM python:3.10-alpine3.17

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY runner_exporter .

CMD [ "python", "-u",  "runner_exporter.py" ]
