source "http://rubygems.org"

gem 'sinatra' # a DSL for quickly creating web applications in Ruby
gem "sinatra-contrib" # Collection of common Sinatra extensions
gem 'haml' # HTML Abstraction Markup Language - a templating engine for HTML
gem 'sass' # an extension of CSS3, adding nested rules, variables, mixins, selector inheritance, and more
gem 'sinatra-assetpack', :require => 'sinatra/assetpack'
gem 'thin' # thin server
gem 'coffee-script' # a little language that compiles into JavaScript

group :test, :development do
  gem 'jammit' # an industrial strength asset packaging library
  gem 'jammit-sinatra' # a jammit wrapper that allows Jammit to work properly in Sinatra web apps
  gem 'guard' # compiles or validates your CoffeeScripts automatically when files are modified
  gem 'guard-coffeescript' # compiles or validates your CoffeeScripts automatically when files are modified
    # Add guard definition to your Guardfile by running this command
    #$ guard init coffescript
  gem 'guard-jammit' # run jammit whenever a javascript or stylesheet is updated
    # Add guard definition to your Guardfile by running this command
    #$ guard init jammit
end