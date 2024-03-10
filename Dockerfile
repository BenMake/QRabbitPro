FROM python:3.9-slim-buster

RUN apt update
RUN apt-get install -yq --no-install-recommends sudo
RUN apt-get install -yq --no-install-recommends python3-dev gcc libc-dev git
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone 
RUN git clone https://github.com/BenMake/QRabbitPro.git /Rabbit 
RUN cd /Rabbit 
RUN pip3 install --no-cache-dir -r requirements.txt 
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /Rabbit

CMD python3 Rabbit.py
