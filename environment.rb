APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..')) unless defined? APP_ROOT
$LOAD_PATH << APP_ROOT + '/lib'
ENV['RACK_ENV'] ||= 'development'

#require 'rubygems'
#require 'bundler'
#require 'sinatra'
#
#require 'jammit'
#require 'jammit-sinatra'
#
#require 'haml'
#require 'sass'
#
#require 'asset_helpers'
#require 'jammit_sass'
#require 'app'