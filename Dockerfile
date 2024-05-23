FROM python:3.7.4-alpine3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt 

COPY . .

WORKDIR /app/app

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--log-level", "debug", "api:app"]
