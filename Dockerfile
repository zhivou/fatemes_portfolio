##
# Rails
FROM ruby:2.6.4

RUN apt-get update -qq \
		&& apt-get install -y nodejs \
		postgresql-client \
		npm

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile Gemfile.lock ./
COPY package.json .
RUN npm install yarn -g
RUN yarn install 
RUN gem install bundler -v 2.0.2
RUN bundle install
RUN rails db:setup
RUN rails webpacker:install
RUN rails webpacker:install:react
RUN rails generate react:install
COPY . /myapp
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0", "-e", "development"]