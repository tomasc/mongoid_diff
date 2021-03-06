# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'mongoid/diff/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid-diff"
  spec.version       = Mongoid::Diff::VERSION
  spec.authors       = ["Tomáš Celizna", "Asger Behncke Jacobsen"]
  spec.email         = ["tomas.celizna@gmail.com", "asger@8kilo.com"]

  spec.summary       = %q{Service producing diff of two Mongoid models.}
  spec.description   = %q{Service producing diff of two Mongoid models.}
  spec.homepage      = "http://github.com/tomasc/mongoid-diff"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  # end

  spec.add_dependency "mongoid", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "minitest"
end
