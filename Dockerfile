FROM python:3.7.4-alpine3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app/app

CMD ["python", "api.py"]