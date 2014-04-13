lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "immutable_hashes/version"

Gem::Specification.new do |spec|
  spec.name          = "immutable_hashes"
  spec.version       = ImmutableHashes::VERSION
  spec.authors       = ["Lionel Barrow"]
  spec.email         = ["lionelbarrow@gmail.com"]
  spec.summary       = "Enforce that you can only assign to a hash's key once."
  spec.description   = "Monkey patches Hash to enforce immutability; also provides an MutableHash class for the old behavior"
  spec.homepage      = "https://www.github.com/lionelbarrow/immutable_hashes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "rake", "~> 10.2"
end
