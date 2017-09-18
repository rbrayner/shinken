FROM rbrayner/shinken-public

RUN pip install passlib
RUN pip install alignak_backend_client

EXPOSE 80
