FROM aksaramaya/tc-python:2.7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["gunicorn"]
CMD ["main:app", "-b 0:8000"]
