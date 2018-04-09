
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dissect_view_helper/version"

Gem::Specification.new do |spec|
  spec.name          = "dissect_view_helper"
  spec.version       = DissectViewHelper::VERSION
  spec.authors       = ["Toan Nguyen"]

  spec.summary       = %q{Helper for auto generating copyright statement.}
  spec.description   = %q{Using in Dissecting Rails 5 course (https://github.com/52/dissect)}
  spec.homepage      = "https://github.com/52/dissect_view_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
