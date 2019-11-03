FROM ruby:2.6.3

WORKDIR /app
ADD ./ /app
RUN bundle install
EXPOSE 4567
