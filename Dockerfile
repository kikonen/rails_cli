FROM ruby:2.7.5

WORKDIR /app

####################
RUN mkdir -p /node_modules && \
    mkdir -p /bundle && \
    mkdir -p /app/public/assets && \
    mkdir -p /app/log && \
    mkdir -p /app/tmp && \
    ln -sf /node_modules node_modules

####################
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get update && \
    apt-get install -y --no-install-recommends nodejs && \
    apt-get install -y --no-install-recommends libxml2-dev libxslt1-dev libpq-dev postgresql-client socat sudo grep less vim

RUN npm install --global yarn

RUN gem install rails

####################
