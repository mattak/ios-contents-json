# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ios/contents/json/version'

Gem::Specification.new do |spec|
  spec.name          = "ios-contents-json"
  spec.version       = Ios::Contents::Json::VERSION
  spec.authors       = ["mattak"]
  spec.email         = ["mattak.me@gmail.com"]
  spec.summary       = %q{Modify xcode's xcassets Contents.json}
  spec.description   = %q{Convert Contents.json from default options to single vector setting}
  spec.homepage      = "https://github.com/mattak/ios-contents-json"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
