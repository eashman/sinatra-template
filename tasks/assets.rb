desc "Compile Sass assets"
task sass :compile do
  sh "sass --update public/stylesheets/sass:public/stylesheets/compiled"
end

namespace :assets do
  desc "Package assets"
  task :package do
    Rake::Task['sass:compile'].execute
    require 'jammit'
    sh "rm -rf public/assets"
    Jammit.package!
  end

  desc "Watch asset files and compile/package on change"
  task :watch => [:package] do
    require 'filewatcher'
    asset_dirs = [
      "public/backbone/",
        "public/stylesheets/",
        "public/support/",
        "config/assets.yml"]
    asset_dirs = ["public/javascripts/", "public/stylesheets/", "public/support/", "public/templates/", "config/assets.yml"]
    begin
      FileWatcher.new(asset_dirs, "Watching assets for updates.").watch do |filename|
        puts filename
        if filename.match /sass/
          Rake::Task['assets:process_sass'].execute
        else
          Rake::Task['assets:package'].execute
        end
      end
    rescue
      Rake::Task['assets:watch'].execute
    end
  end
end