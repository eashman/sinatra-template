namespace :naturaldocs do
  desc "generate documentation"
  task :generate do
    sh %{mkdir -p public/docs/.nd && naturaldocs -i . -o html public/docs -p public/docs/.nd} do |ok, res|
      if ok
        puts " Documentation generated successfully in public/docs."
      else
        puts "Couldn’t generate documentation, have you installed naturaldocs? (brew install naturaldocs)."
      end
    end
  end
end