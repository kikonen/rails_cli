FROM ruby:2.7.2

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for a JS runtime
# Using Debian, as root
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

RUN gem install rails

WORKDIR /app
