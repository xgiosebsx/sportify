FROM ruby:2.2.2
# Install dependencies.
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
# Setup app directory.
ENV APP_HOME /app/sportify_app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
# Copy the Gemfile and Gemfile.lock into the image and install gems before the
# project is copied, this is to avoid do bundle install every time some project
# file change.
# This move the Gemfile and the Gemfile.lock
ADD Gemfile* $APP_HOME/
RUN gem install bundler
RUN bundle install --jobs=4
#Everything up to here was cached. This includes the bundle install, unless the
#Gemfiles changed. Now copy the app into the image.
ADD . $APP_HOME
VOLUME $APP_HOME
