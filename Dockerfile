FROM ruby:3.2.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn vim
RUN mkdir /sample_app
WORKDIR /sample_app
ADD Gemfile /sample_app/Gemfile
ADD Gemfile.lock /sample_app/Gemfile.lock
RUN bundle install
ADD . /sample_app

# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# Start the main process.
