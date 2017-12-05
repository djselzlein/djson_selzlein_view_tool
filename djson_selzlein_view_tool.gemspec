
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "djson_selzlein_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "djson_selzlein_view_tool"
  spec.version       = DjsonSelzleinViewTool::VERSION
  spec.authors       = ["Djeison Selzlein"]
  spec.email         = ["djeison.selzlein@gmail.com"]

  spec.summary       = %q{Util methods for applications I write}
  spec.description   = %q{Generates HTML for applications}
  spec.homepage      = "https://github.com/selzlein/djson_selzlein_view_tool"
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
