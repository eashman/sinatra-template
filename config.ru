require 'rubygems'
require 'bundler'
Bundler.require

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'my_app'
run Sinatra::Application