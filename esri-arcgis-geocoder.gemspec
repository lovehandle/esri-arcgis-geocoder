# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'esri/arcgis/geocoder/version'

Gem::Specification.new do |spec|
  spec.name          = "esri-arcgis-geocoder"
  spec.version       = ESRI::ArcGIS::Geocoder::VERSION
  spec.authors       = ["Ryan Closner"]
  spec.email         = ["ryan@ryanclosner.com"]
  spec.summary       = %q{A Ruby ESRI ArcGIS Geocoder API wrapper}
  spec.description   = %q{A Ruby ESRI ArcGIS Geocoder API wrapper}
  spec.homepage      = "https://github.com/rclosner/esri-arcgis-geocoder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  runtime_dependencies = {
    "virtus" => "~> 1.0.1"
  }

  runtime_dependencies.each {|lib, version| spec.add_runtime_dependency(lib, version) }

  development_dependencies = {
    "bundler" => "~> 1.5",
    "rake"    => "~> 10.1.1"
  }

  development_dependencies.each {|lib, version| spec.add_development_dependency(lib, version) }

end
