FROM ruby:2.2-onbuild

RUN gem install foreman

CMD ["foreman", "start"]
