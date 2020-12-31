FROM  nervesproject/nerves_system_br:1.13.0

LABEL "com.github.actions.name"="Build PLT Test OS"
LABEL "com.github.actions.description"="Build PLT Test OS"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/bcdevices/ly11-plt-test"
LABEL "homepage"="https://github.com/bcdevices/ly11-plt-test"
LABEL "maintainer"="Blue Clover Devices"

ENV ELIXIR_VERSION=1.10.4-otp-23

RUN apt-get -y install -y \
     git

#Install Elixir
RUN wget https://repo.hex.pm/builds/elixir/v$ELIXIR_VERSION.zip && \
      unzip -d /usr/local/elixir v$ELIXIR_VERSION.zip

ENV PATH /usr/local/elixir/bin:$PATH

#Create Work Directory
RUN mkdir -p /pltos

#Set Working Directory
WORKDIR /pltos

# COPY
COPY . /pltos

ADD entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
