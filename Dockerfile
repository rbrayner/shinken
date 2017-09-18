FROM rohit01/shinken_thruk_graphite

RUN apt-get update && apt-get upgrade -y && apt install -y vim

RUN pip install passlib
RUN pip install alignak_backend_client

EXPOSE 80 7770
