FROM python:alpine

COPY ./data /home/data
COPY ./app.py /home
COPY ./output /home/output

WORKDIR /home

RUN pip install collection
RUN pip install sockets

RUN python app.py
# CMD ["python", "./app.py"]

CMD ["cat", "/home/output/result.txt"]