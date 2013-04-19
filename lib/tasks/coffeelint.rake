task :coffeelint do
  system("coffeelint #{Dir.glob(Rails.root + "app/**/*.coffee").join(" ")}")
end
