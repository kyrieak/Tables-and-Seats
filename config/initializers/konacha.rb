begin
  require 'capybara/poltergeist'
  Konacha.configure do |config|
    config.spec_dir     = "spec/javascripts"
    config.spec_matcher = /_spec\.|_test\./
    config.driver       = :poltergeist
    config.stylesheets  = %w(application)
  end if defined?(Konacha)
rescue LoadError => e
 puts "Error loading Capybara/Poltergeist"
end
