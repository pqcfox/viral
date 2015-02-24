# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viral/version'

Gem::Specification.new do |spec|
  spec.name          = "viral"
  spec.version       = Viral::VERSION
  spec.authors       = ["useanalias"]
  spec.email         = ["use.an.alias@gmail.com"]

  spec.summary       = %q{Play "hacker" without the moral implications, social engineering, and jail time.}
  spec.description   = %q{Create Ruby-based computer viruses to run on Vagrant VM and erradicate them over SSH.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
