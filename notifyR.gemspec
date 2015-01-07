# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notifyR/version'

Gem::Specification.new do |spec|
  spec.name          = "notifyR"
  spec.version       = NotifyR::VERSION
  spec.authors       = ["ashokgadikoppula\n"]
  spec.email         = ["ashokgadikoppula@gmail.com"]
  spec.summary       = "NotifyR is a nice gem"
  spec.description   = %q{NotifyR is a nice gem to send notifications}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
