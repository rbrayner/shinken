FROM rbrayner/shinken:latest

RUN shinken install mod-mongodb-retention-scheduler

EXPOSE 80 7770
