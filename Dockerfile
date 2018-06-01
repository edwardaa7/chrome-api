FROM python:3.6-alpine3.7

ENV FLASK_APP api.py
WORKDIR /app
ADD api.py .
ADD requirements.txt .

RUN apk add --update --no-cache chromium && \
    pip install -r requirements.txt && \
    find / -type d -name __pycache__ -exec rm -r {} + && \
    rm -rf /root/.cache /var/cache /usr/share/terminfo

EXPOSE 5000

CMD flask run --host=0.0.0.0
