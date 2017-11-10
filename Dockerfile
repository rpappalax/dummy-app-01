FROM python:3.6-slim

RUN pip install -r requirements.txt 

WORKDIR /tests
ADD . /tests

CMD molotov -c $VERBOSE -d $TEST_DURATION -w $TEST_CONNECTIONS loadtest.py
