class MyApp < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  # awaiting update for sinatra-assetpack; fix for sinatra 1.3.0
  #assets {
  #  serve '/js', from: 'assets/javascripts'
  #  serve '/css', from: 'assets/stylesheets'
  #  serve '/images', from: 'assets/images'
  #
  #  # The second parameter defines where the compressed version will be served.
  #  # (Note: that parameter is optional, AssetPack will figure it out.)
  #  js :app, '/public/javascripts/app.js',
  #    [
  #      '/assets/javascripts/**/*.js'
  #    ]
  #
  #  css :application, '/public/stylesheets/application.css',
  #    [
  #      '/assets/javascript/style.css'
  #    ]
  #
  #  js_compression :jsmin
  #  css_compression :sass
  #}

  configure do
    set :app_file, __FILE__
    set :root, File.dirname(__FILE__)
    set :views, 'views'
    set :server, %w(thin webrick)
    set :haml, {:format => :html5}
    set :sass, {:style => :compressed} if ENV['RACK_ENV'] == 'production'
  end

  configure :development do
    require "sinatra/reloader"
  end

end

# Application routes
get '/' do
  haml :index, :layout => :'layouts/application'
end


