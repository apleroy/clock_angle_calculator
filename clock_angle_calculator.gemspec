# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clock_angle_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "clock_angle_calculator"
  spec.version       = ClockAngleCalculator::VERSION
  spec.authors       = ["Andy LeRoy"]
  spec.email         = ["apleroy@gmail.com"]

  spec.summary       = %q{This gem provides functionality for computing the angle between hour and minute hands on an analog clock.}
  spec.description   = %q{Given a datetime or an hour/minute value pair, this gem returns an angle (180 degrees or less) between the
                          hour and minute hands on a clock if the time were to be modeled on an analog clock.}
  spec.homepage      = "github.com/apleroy/clock_angle_calculator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
