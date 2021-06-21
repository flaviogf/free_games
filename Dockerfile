FROM ruby:2.6
WORKDIR /www
COPY . .
RUN gem install --no-document bundler \
    && bundle config --local frozen true \
    && bundle config --local without "development test" \
    && bundle install
ENV port=8080
ENTRYPOINT ["bundle", "exec", "functions-framework-ruby"]
