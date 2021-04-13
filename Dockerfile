FROM ruby:2.7.2

RUN gem install rails

WORKDIR /app
