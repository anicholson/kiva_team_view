FROM ruby:2.2-onbuild

RUN gem install foreman

WORKDIR /usr/src/app

CMD ["foreman", "start"]
