FROM python:3.10-slim
ENV DEBIAN_FRONTEND noninteractive
ENV TZ UTC
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --no-install-suggests --no-install-recommends --yes \
    poppler-utils \
    gcc \
    g++ \
    wget \
    curl \
    xz-utils \
    gzip \
    git \
    make \
    unzip \
    zip \
    apt-transport-https \
    ca-certificates \
    gnupg \
    && pip install --no-cache-dir --upgrade pip setuptools wheel poetry \
    && apt-get clean \
    && apt-get autoremove --purge --yes \
    && rm -rf /var/lib/apt/lists/* /root/* /tmp/* /var/cache/apt/archives/*.deb
