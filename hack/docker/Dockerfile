FROM projectdc/core_py

MAINTAINER ysicing

RUN mkdir /app

COPY psdash.tgz /tmp/psdash.tgz

RUN tar xf /tmp/psdash.tgz -C /app && mkdir -p /app/build

WORKDIR /app/

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]

