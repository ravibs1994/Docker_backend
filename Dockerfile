FROM python:3.6
RUN mkdir /new_chtapp
COPY . /new_chtapp
WORKDIR /new_chtapp
RUN pip3 install -r requirements.txt
RUN pip3 install mysqlclient
RUN pip3 install msgpack
EXPOSE 8000
WORKDIR /new_chtapp/fundoo/
ENTRYPOINT  python3 manage.py runserver 0.0.0.0:8000
#
#
#
#
#
