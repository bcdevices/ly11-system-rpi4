ARG NERVES_SYSTEM_BR_VERSION="1.24.1"
FROM ghcr.io/nerves-project/nerves_system_br:${NERVES_SYSTEM_BR_VERSION}
LABEL "com.github.actions.name"="Build System"
LABEL "com.github.actions.description"="Build Nerves System"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/bcdevices/ly11-system-rpi4"
LABEL "homepage"="https://github.com/bcdevices/ly11-system-rpi4"
LABEL "maintainer"="Blue Clover Devices"

ARG ELIXIR_VERSION="1.14.4-otp-25"

RUN apt-get update && \
  apt install -y \
  subversion \
  u-boot-tools \
  ca-certificates \
  autoconf-archive \
  gettext \
  mercurial

#Install Elixir
RUN wget https://repo.hex.pm/builds/elixir/v$ELIXIR_VERSION.zip && \
  unzip -d /usr/local/elixir v$ELIXIR_VERSION.zip

ENV PATH /usr/local/elixir/bin:$PATH

#Create Work Directory
RUN mkdir -p /nerves-system

#Set Working Directory
WORKDIR /nerves-system

RUN mkdir -p /root/local
RUN mkdir -p /root/empty

# COPY
COPY . /nerves-system
