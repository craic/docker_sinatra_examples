require 'bundler'
Bundler.require

require 'sinatra'

require './docker_sinatra_example_app.rb'

run DockerSinatraExampleApp.new
