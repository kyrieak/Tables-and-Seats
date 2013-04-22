task :default => [:test, :jshint, :coffeelint, :cane, "konacha:run"]
