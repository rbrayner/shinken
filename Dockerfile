FROM rbrayner/shinken:latest

RUN shinken install mod-mongodb-retention-scheduler
RUN shinken install retention-mongodb

EXPOSE 80 7770
