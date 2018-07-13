ARG DISTRO
FROM ubuntu:$DISTRO

RUN apt-get update && \
  # Install OS reqs
  apt-get install -yq \
  git && \
  # Install WX
  apt-get install -yq \
  libpng-dev \
  python-dev \
  python-pip \
  python-wxgtk2.8

# Grab latest master.
RUN mkdir /code
RUN cd /code && git clone http://github.com/hsnr-gamera/gamera.git

COPY ./install.sh /code/gamera
ENV MATRIX_EVAL 'echo OK!'
RUN chmod +x /code/gamera/install.sh
WORKDIR /code/gamera
RUN /code/gamera/install.sh
