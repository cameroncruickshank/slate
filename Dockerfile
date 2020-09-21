FROM ruby:2.7-slim

WORKDIR /srv/slate

VOLUME /srv/slate/source
EXPOSE 4567

COPY . /srv/slate
COPY ./coopcerts/* /usr/local/share/ca-certificates/
RUN update-ca-certificates

RUN apt-get update 
RUN apt-get install -y --no-install-recommends \
        build-essential \
        nodejs 

RUN gem install bundler --source http://rubygems.org
RUN bundle install 
RUN apt-get remove -y build-essential 
RUN apt-get autoremove -y 
RUN rm -rf /var/lib/apt/lists/*

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
