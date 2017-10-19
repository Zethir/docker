FROM ruby
WORKDIR /opt/app
RUN apt-get update && apt-get install -y nodejs && gem install rails -v 5.0.2 && rails new rails_server

ONBUILD WORKDIR /opt/app
ONBUILD RUN cd rails_server && bundle install && rake db:migrate && rake db:seed
