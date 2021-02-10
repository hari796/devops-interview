FROM python:3.9-slim@sha256:bf3ec573c0ae0d0c619c3f3e0e9490878432bf7a5c63a643b6c39c9878b51191
ADD my_script.py /
RUN pip install flask
CMD [ "python", "./my_script.py" ]

FROM python:3.9-slim

WORKDIR /opt

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

COPY hello.py /opt/hello.py

EXPOSE 500

CMD ["python","/opt/hello.py"]
