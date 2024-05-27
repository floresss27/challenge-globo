import requests
import json
import time
import random

def send_query():
    url = "http://0.0.0.0:7111/api/comment/new"

    payload = json.dumps({
    "email": "user@example.com",
    "comment": "eu gosto da giovanna",
    "content_id": 1
    })
    headers = {
    'Content-Type': 'application/json'
    }

    response = requests.request("POST", url, headers=headers, data=payload)

    print(response.text)

min_interval = 10
max_interval = 30

while True:
    num_queries = random.randint(10, 30)

    print(f"Executing {num_queries} queries...")

    for _ in range(num_queries):
        send_query()

    interval = random.randint(min_interval, max_interval)
    print(f"Waiting for {interval} seconds...")
    time.sleep(interval)
