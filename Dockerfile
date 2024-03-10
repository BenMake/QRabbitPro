FROM python:3.9-slim-buster

RUN apt update
RUN apt-get install -yq --no-install-recommends sudo
RUN apt-get install -yq --no-install-recommends python3-dev gcc libc-dev git
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone 
RUN git clone https://github.com/BenMake/QRabbitPro.git /Rabbit 
RUN cd /Rabbit 

# RUN pip3 install --no-cache-dir -r requirements.txt 

RUN pip3 install --no-cache-dir aiohttp
RUN pip3 install --no-cache-dir APScheduler
RUN pip3 install --no-cache-dir Jinja2
RUN pip3 install --no-cache-dir pycryptodome
RUN pip3 install --no-cache-dir requests
RUN pip3 install --no-cache-dir sanic
RUN pip3 install --no-cache-dir uvloop
RUN pip3 install --no-cache-dir websockets
RUN pip3 install --no-cache-dir sanic_jwt
RUN pip3 install --no-cache-dir sanic_openapi
RUN pip3 install --no-cache-dir tortoise-orm
RUN pip3 install --no-cache-dir ruamel.yaml
RUN pip3 install --no-cache-dir sanic_openapi
RUN pip3 install --no-cache-dir qrcode
RUN pip3 install --no-cache-dir tzlocal
RUN pip3 install --no-cache-dir httpx
RUN pip3 install --no-cache-dir opencv-python-headless
RUN pip3 install --no-cache-dir fake-useragent
RUN pip3 install --no-cache-dir matplotlib
RUN pip3 install --no-cache-dir pyecharts

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /Rabbit

CMD python3 Rabbit.py
