FROM golang:1.15.0-buster

RUN apt-get update \
    && apt-get install build-essential pkg-config glib2.0-dev libexpat1-dev libvips libtiff5-dev libgsf-1-dev libpango1.0-dev -y \
    && wget https://github.com/libvips/libvips/releases/download/v8.10.0/vips-8.10.0.tar.gz \
    && tar xf vips-8.10.0.tar.gz \
    && cd vips-8.10.0 \
    && ./configure \
    && make \
    && make install \
    && ldconfig