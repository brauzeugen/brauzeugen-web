FROM ruby:2.5-alpine
MAINTAINER Josua Schmid <jschmid@fastmail.net>

RUN apk upgrade && apk add \
  nodejs \
  yarn \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
  tzdata \
  netcat-openbsd

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

WORKDIR /usr/src/app
COPY .ruby-version Gemfile Gemfile.lock ./

RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . .
RUN bundle exec bin/rails assets:precompile

CMD ["/bin/sh", "bin/docker_start"]

