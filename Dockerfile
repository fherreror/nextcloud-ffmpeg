FROM nextcloud:latest

RUN apt-get update && apt-get install -y \
    ffmpeg \
    imagemagick \
    ghostscript \
    exiftool \
    libheif-examples \
    libraw-bin \
    mesa-va-drivers \
    vainfo \
    && rm -rf /var/lib/apt/lists/*
