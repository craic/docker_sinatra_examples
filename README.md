Here are two versions of a simple Ruby Sinatra application that have been packaged using Docker

The Application itself is a minimal Sinatra app that does accepts a http request and returns a
page showing the IP address of the requestor.

The goal here is to show alternate ways to Containerize the application using Docker using
different versions of Ruby.

The system version of Ruby that comes with each release of Ubuntu
(and other Linux distributions) is typically one or two releases back from the current
version.

This can be a problem for developers who want to use new features and becomes
a trade off between using 'out dated', but convenient, off-the-shelf packages and the hassles that come
with compiling/installing more recent versions from source.

This is especially the case when you want to 'containerize' your application and need to
write a robust script/config file that will ensure new instances of your application have
the correct versions of Ruby, etc.



docker_sinatra_example_1

This uses Ubuntu 14.04 - and with this distribution the version of Ruby that is available is 1.9.3.

The current version (as of 2014-09-18) is 2.1.2 so that represents quite a lag.

For many purposes 1.9.3 is just fine. This version uses the packaged Ruby.



docker_sinatra_example_2

If you want to use Ruby 2.1.2 then you can try looking for a third party package that you can install
using apt-get, for example http://brightbox.com/blog/2014/01/09/ruby-2-1-ubuntu-packages/

But I had problems accessing these from within Docker - don't know why...

The next step is to compile Ruby from source. This example shows you a Dockerfile that does that.



