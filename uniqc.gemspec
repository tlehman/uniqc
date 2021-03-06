# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uniqc/version'

Gem::Specification.new do |spec|
  spec.name          = "uniqc"
  spec.version       = Uniqc::VERSION
  spec.authors       = ["Tobi Lehman"]
  spec.email         = ["tobi.lehman@gmail.com"]

  spec.summary       = %q{uniqc for ruby arrays}
  spec.description   = %q{Like uniq -c for ruby arrays}
  spec.homepage      = "https://github.com/tlehman/uniqc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
