task :jshint do
  system("jshint #{Dir.glob(Rails.root + "app/**/*.js").join(" ")} --config #{Rails.root}/.jshintrc")
end
