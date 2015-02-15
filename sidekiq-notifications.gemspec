# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/notifications/version'

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-notifications"
  spec.version       = Sidekiq::Notifications::VERSION
  spec.authors       = ["Allen Madsen"]
  spec.email         = ["blatyo@gmail.com"]
  spec.summary       = %q{Adds ActiveSupport/Notifications support to sidekiq.}
  spec.homepage      = "https://github.com/lintci/sidekiq-notifications"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'sidekiq', '>= 3.3.0'
  spec.add_runtime_dependency 'activesupport', '>= 4.2.0'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
