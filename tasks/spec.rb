desc "Run spec suite: Browser, Node, JSHint"
task :spec => ["count_specs", "spec:node", "spec:browser"]

desc "Run specs in the default browser (MacOS only)"
task "spec:browser" => [:count_specs, :build_runner_html] do
  puts "Running all appropriate specs via the default web browser".cyan
  system("open spec/runner.html")
end

#Count number of specs in Jasmine core
task :count_specs do
  core_specs_count =  count_specs_in(Dir.glob('spec/core/*.js'))
  console_spec_count = count_specs_in(Dir.glob('spec/console/*.js'))
  html_spec_count = count_specs_in(Dir.glob('spec/html/*.js'))

  puts "\n"
  puts "#{(core_specs_count + console_spec_count).to_s.yellow.bold} specs for Node.js runner (exclude DOM-related specs)"
  puts "#{(core_specs_count + console_spec_count + html_spec_count).to_s.yellow.bold} specs for Browser runner (all specs)"
  puts "\n"
  puts "Please verify that these numbers match the runner output."
  puts "\n"
end

def count_specs_in(files)
  files.inject(0) do |count, file|
    File.read(file).scan(/\sit\(/) {|s| count += 1}
    count
  end
end