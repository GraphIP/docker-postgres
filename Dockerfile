FROM postgres:11

LABEL maintainer="AIGIS Services Ltd"

RUN apt-get update && \
    apt-get install --no-install-recommends postgresql-11-ip4r -y \
    && rm -rf /var/lib/apt/lists/*