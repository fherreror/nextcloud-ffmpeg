FROM nextcloud:latest

RUN apt-get update && apt-get install -y \
    ffmpeg \
    imagemagick \
    ghostscript \
    exiftool \
    libheif-examples \
    libraw-bin \
    mesa-va-drivers \
    i965-va-driver-shaders \
    libva2 \
    vainfo \
    && rm -rf /var/lib/apt/lists/*

# Asegura grupos GPU con los GID del host y añade www-data
RUN groupadd -g 44 video 2>/dev/null || true \
 && groupadd -g 104 render 2>/dev/null || true \
 && usermod -aG video,render www-data
