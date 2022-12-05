FROM ruby:3.1.3-slim-bullseye

# does capistrano have OS dependencies?

# pin specific version of capistrano
RUN gem install capistrano -v 3.17.1

# create dedicated user of application
RUN useradd pulsys

USER pulsys

# Set the base directory that will be used from now on
WORKDIR /pulbot/

# Do we need a capfile?
