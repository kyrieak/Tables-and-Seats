begin
  require 'cane/rake_task'

  desc "Run cane to check quality metrics"
  Cane::RakeTask.new(:cane) do |cane|
    cane.abc_max = 10
    cane.add_threshold 'coverage/.last_run.json', :>=, 90
    cane.no_style = true
  end

  task :default => :cane
rescue LoadError
  warn "cane not available, quality task not provided."
end
