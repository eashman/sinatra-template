APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..')) unless defined? APP_ROOT
$LOAD_PATH << APP_ROOT + '/lib'
ENV['RACK_ENV'] ||= 'development'
