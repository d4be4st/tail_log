# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tail_log/version'

Gem::Specification.new do |spec|
  spec.name          = "tail_log"
  spec.version       = TailLog::VERSION
  spec.authors       = ["Stjepan Hadjic"]
  spec.email         = ["stjepan.hadjic@infinum.hr"]
  spec.description   = %q{Gem for easy logs view}
  spec.summary       = %q{Simple tailing of env logs}
  spec.homepage      = "https://github.com/d4be4st/tail_log"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
