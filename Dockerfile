FROM python:3.6-slim

WORKDIR /tests
ADD . /tests

RUN pip install -r ./requirements.txt 

CMD ./run.sh 
