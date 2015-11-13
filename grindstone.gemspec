$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "grindstone/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "grindstone"
  s.version     = Grindstone::VERSION
  s.authors     = ["jgrosecl49"]
  s.email       = ["joe.groseclose@ordergroove.com"]
  # s.homepage    = ""
  s.summary     = "Summary of Grindstone."
  s.description = "Description of Grindstone."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.2.4'
  s.add_dependency 'rails_admin', '0.7.0'

  s.add_development_dependency "sqlite3"
end
