
# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "city_capitals/version"

# Gem::Specification.new do |spec|
#   spec.name          = "city_capitals"
#   spec.version       = CityCapitals::VERSION
#   spec.authors       = ["Samuel Cornet"]
#   spec.email         = "corsam28@gmail.com"
#   spec.date          = '2020-06-29'

#   spec.summary       = %q{This app can populate the cities and their capitals}
#   spec.description   = %q{TODO: Write a longer description or delete this line.}
#   # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
#   spec.license       = "MIT"

#   # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
#   # to allow pushing to a single host or delete this section to allow pushing to any host.
#   if spec.respond_to?(:metadata)
#     spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

#     spec.metadata["https://rubygems.org/gems/city_capitals"] = spec.homepage
#     spec.metadata["source_code_uri"] = "https://rubygems.org/gems/city_capitals"
#     spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
#   else
#     raise "RubyGems 2.0 or newer is required to protect against " \
#       "public gem pushes."
#   end

#   # Specify which files should be added to the gem when it is released.
#   # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
#   spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
#     `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
#   end
#   spec.bindir        = "exe"
#   spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
#   spec.require_paths = ["lib"]

#   spec.add_development_dependency "bundler", "~> 1.16"
#   spec.add_development_dependency "rake", "~> 10.0"
# end


Gem::Specification.new do |s|
  s.name = 'city_capitals'
  s.version = CityCapitals::VERSION
  s.date = '2020-06-29'
  s.summary = 'This app can populate the cities and their capitals'
  s.authors = ['Samuel Cornet']
  s.email = "corsam28@gmail.com"
  s.homepage = 'https://rubygems.org/gems/city_capitals'
  s.license = 'MIT'
  s.files = [
    'lib/city_capitals.rb'
  ]
  s.require_paths = ['lib']
end