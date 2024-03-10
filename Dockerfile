FROM python:3.9-slim-buster

RUN apt update
RUN apt-get install -yq --no-install-recommends sudo
RUN apt-get install -yq --no-install-recommends python3-dev gcc libc-dev git
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone 
RUN git clone https://github.com/BenMake/QRabbitPro.git /Rabbit 
RUN cd /Rabbit 

# RUN pip3 install --no-cache-dir -r requirements.txt 

RUN pip3 install aiohttp
RUN pip3 install APScheduler
RUN pip3 install Jinja2
RUN pip3 install pycryptodome
RUN pip3 install requests
RUN pip3 install sanic
RUN pip3 install uvloop
RUN pip3 install websockets
RUN pip3 install sanic_jwt
RUN pip3 install sanic_openapi
RUN pip3 install tortoise-orm
RUN pip3 install ruamel.yaml
RUN pip3 install sanic_openapi
RUN pip3 install qrcode
RUN pip3 install tzlocal
RUN pip3 install httpx
RUN pip3 install opencv-python-headless
RUN pip3 install fake-useragent
RUN pip3 install matplotlib
RUN pip3 install pyecharts

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /Rabbit

CMD python3 Rabbit.py
