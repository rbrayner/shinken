FROM rohit01/shinken_thruk_graphite

RUN pip install passlib
RUN pip install alignak_backend_client

EXPOSE 80 7770
