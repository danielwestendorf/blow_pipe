$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blow_pipe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blow_pipe"
  s.version     = BlowPipe::VERSION
  s.authors     = ["Daniel Westendorf"]
  s.email       = ["daniel@prowestech.com"]
  s.summary     = "Clean up you database via a URL visit"
  s.description = "Clean your test database with database_cleaner simply by visiting a URL. Intended to be used with Javascirpt E2E tests."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "database_cleaner"

end
