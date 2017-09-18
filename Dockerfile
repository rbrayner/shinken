FROM rohit01/shinken_thruk_graphite

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim

RUN pip install passlib
RUN pip install alignak_backend_client
RUN shinken --init
RUN shinken install pickle-retention-file-scheduler
RUN shinken install pickle-retention-file-generic
RUN touch /var/lib/shinken/retention.dat
RUN chown shinken.shinken /var/lib/shinken/retention.dat
RUN chmod 660 /var/lib/shinken/retention.dat
RUN chown shinken.shinken /var/lib/shinken -R

EXPOSE 80 7770
