task :jslint do
  system("jshint #{Dir.glob(Rails.root + "app/**/*.js").join(" ")} --config #{Rails.root}/.jslintrc")
end
