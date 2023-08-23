FROM debian:latest

##Docker work
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip -y
RUN python3 -m pip install --user --upgrade pipx 
RUN pip3 install -U pip

## app
RUN mkdir /app/
WORKDIR /app/
COPY . /app/

## install requirements
RUN pip3 install -U -r requirements.txt
CMD python3 Gladiators.py
