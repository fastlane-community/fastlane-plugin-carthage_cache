coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/carthage_cache/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-carthage_cache'
  spec.version       = Fastlane::CarthageCache::VERSION
  spec.author        = %q{Thi Doan}
  spec.email         = %q{t@thi.im}

  spec.summary       = %q{A Fastlane plugin that allows to cache Carthage/Build folder in Amazon S3.}
  spec.homepage      = "https://github.com/thii/fastlane-plugin-carthage_cache"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'carthage_cache'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'fastlane', '>= 1.93.1'
end
