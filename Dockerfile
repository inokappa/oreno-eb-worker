FROM ruby
MAINTAINER inokappa

RUN mkdir /opt/worker
ADD Gemfile /opt/worker/
ADD helloworld.rb /opt/worker/
ADD config.ru /opt/worker/

WORKDIR /opt/worker
RUN bundle install --path vendor/bundle

EXPOSE 4567
CMD bundle exec rackup config.ru -p 4567 -s thin -o 0.0.0.0
