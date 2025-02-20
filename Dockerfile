FROM ghcr.io/devilld/py3-dev:main

WORKDIR /BOT

RUN chmod -R 777 /BOT

COPY requirements.txt .
RUN pip3 install --no-cache -r requirements.txt

COPY piratebay.py .
CMD ["python3", "piratebay.py"]
