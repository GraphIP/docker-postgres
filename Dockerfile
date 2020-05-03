FROM postgres:11

LABEL maintainer="AIGIS Services Ltd"

RUN apt-get update && apt-get install postgresql-11-ip4r -y