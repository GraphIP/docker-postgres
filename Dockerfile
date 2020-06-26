FROM postgres:12

LABEL maintainer="AIGIS Services Ltd"

RUN apt-get update && \
    apt-get install --no-install-recommends postgresql-12-ip4r -y \
    && rm -rf /var/lib/apt/lists/*