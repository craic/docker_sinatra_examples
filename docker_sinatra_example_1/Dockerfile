# Docker example of a sinatra application
#
# This version uses the default system ruby (1.9.3) for Ubuntu 14.04
#

FROM ubuntu:14.04
MAINTAINER Rob Jones <jones@craic.com>
RUN apt-get -qq update
RUN apt-get -qqy install build-essential

# Install dependencies

RUN apt-get -qqy install ruby ruby-dev

# Copy the Sinatra app files into this directory in the container and make it the working directory
ADD . /home/www
WORKDIR /home/www

# Install bundler to handle gem dependencies
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN gem install bundler --no-ri --no-rdoc

# install foreman to start up the application
RUN gem install foreman --no-ri --no-rdoc

# install all gems required by the application
RUN bundle install

EXPOSE :5000


# This will be run when you call "docker run..."

CMD ["foreman", "start"]




