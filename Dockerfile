FROM python:3.9-slim-buster

RUN apt update
RUN apt-get install -yq --no-install-recommends sudo
RUN apt-get install -yq --no-install-recommends python3-dev gcc libc-dev git cmake 
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone 
RUN git clone https://github.com/BenMake/QRabbitPro.git /Rabbit 
RUN cd /Rabbit 

RUN apt-get install -yq --no-install-recommends --reinstall build-essential
RUN apt-get install -yq --no-install-recommends libssl-dev file

# RUN pip3 install --no-cache-dir -r requirements.txt 
RUN pip3 install --upgrade pip

RUN pip3 install aiohttp==3.8.1
RUN pip3 install APScheduler==4.0.0a2
RUN pip3 install Jinja2==3.0.3
RUN pip3 install pycryptodome==3.14.1
RUN pip3 install requests==2.26.0
RUN pip3 install sanic==21.12.1
# RUN pip3 install sanic==21.12.1 -i http://pypi.tuna.tsinghua.edu.cn/simple/ --trusted-host pypi.tuna.tsinghua.edu.cn

RUN pip3 install uvloop==0.16.0
RUN pip3 install websockets==10.4
RUN pip3 install sanic_jwt==1.8.0
RUN pip3 install sanic_openapi==21.12.0
RUN pip3 install tortoise-orm==0.19.3

# RUN pip3 install aiohttp
# RUN pip3 install APScheduler
# RUN pip3 install Jinja2
# RUN pip3 install pycryptodome
# RUN pip3 install requests
# RUN pip3 install sanic
# RUN pip3 install uvloop
# RUN pip3 install websockets
# RUN pip3 install sanic_jwt
# RUN pip3 install sanic_openapi
# RUN pip3 install tortoise-orm
RUN pip3 install ruamel.yaml
RUN pip3 install qrcode
RUN pip3 install tzlocal
RUN pip3 install httpx
RUN pip3 install opencv-python-headless==4.5.3.56
# pip3 install opencv-contrib-python==4.5.3.56

RUN pip3 install fake-useragent
RUN pip3 install matplotlib
RUN pip3 install pyecharts

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /Rabbit

CMD python3 Rabbit.py
