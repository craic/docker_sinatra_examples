# docker_sinatra_example_app
# Copyright 2014  Robert Jones, Craic Computing LLC
# Freely distributed under the MIT License

# Example Sinatra application

require 'erb'

$:.unshift File.join(File.dirname(__FILE__))

class DockerSinatraExampleApp < Sinatra::Base

  # The index action gets information about the user's request and displays it
  get '/' do
    erb :index
  end

end
