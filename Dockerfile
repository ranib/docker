FROM phusion/baseimage:latest
MAINTAINER Ray Walker <hello@raywalker.it>

# Tell the conatiner there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Automatic choose local mirror for sources list
COPY sources.list /etc/apt/sources.list

# Update to latest packages and tidy up
RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get -y autoremove \
  && apt-get -y clean \
  && rm -rf /tmp/* /var/tmp/*