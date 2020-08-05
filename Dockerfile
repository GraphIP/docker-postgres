FROM postgres:12

LABEL maintainer="AIGIS Services Ltd"

RUN apt-get update && \
    apt-get install --no-install-recommends \
    ca-certificates \
    unzip \
    postgresql-12-ip4r -y \
    && cd /tmp \
    && wget -nv -O GeoLite2-City-CSV.zip "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City-CSV&license_key=${MAXMIND_LICENSE_KEY}&suffix=zip" \
    && wget -nv -O GeoLite2-ASN-CSV.zip "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-ASN-CSV&license_key=${MAXMIND_LICENSE_KEY}&suffix=zip" \
    && unzip GeoLite2-City-CSV.zip && unzip GeoLite2-ASN-CSV.zip \
    && cd /tmp/GeoLite2-City-CSV_* && mv * .. \
    && cd /tmp/GeoLite2-ASN-CSV_* && mv * .. \
    && cd .. \
    && rm -rf /tmp/GeoLite2-ASN-CSV* \
    && rm -rf /tmp/GeoLite2-City-CSV* \
    && rm *.txt && ls -alh \
    && rm -rf /var/lib/apt/lists/*