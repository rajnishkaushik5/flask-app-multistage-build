# ...........stage 1..............

FROM python:3.9 AS builder
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

#............stage 2..........

FROM python:3.9-slim 
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=builder /app /app
CMD ["python","run.py"]

