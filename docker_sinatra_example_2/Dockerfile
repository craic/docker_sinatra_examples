# Docker example of a sinatra application
#
# This version compiles Ruby 2.1.2 from source and uses that to install gems etc
#

FROM ubuntu:14.04
MAINTAINER Rob Jones <jones@craic.com>
RUN apt-get -qq update
RUN apt-get -qqy install build-essential

# Install dependencies

# You need these libraries to correctly build ruby - and wget to fetch the tar file

RUN apt-get update -qq && apt-get install -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev wget

# Fetch the Ruby source, unpack it and compile in /tmp

WORKDIR /tmp
RUN wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz
RUN tar -xvzf ruby-2.1.2.tar.gz
WORKDIR /tmp/ruby-2.1.2/
RUN ./configure --prefix=/usr/local
RUN make
RUN make install

# ...should probably clean up the files in /tmp ...

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




