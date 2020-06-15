FROM postgres:12

LABEL maintainer="AIGIS Services Ltd"

RUN apt-get update && apt-get install postgresql-12-ip4r -y