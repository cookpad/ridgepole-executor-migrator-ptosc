# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ridgepole/executor/migrator/ptosc/version'

Gem::Specification.new do |spec|
  spec.name          = 'ridgepole-executor-migrator-ptosc'
  spec.version       = Ridgepole::Executor::Migrator::Ptosc::VERSION
  spec.authors       = ['Kirk Haines']
  spec.email         = ['kirk-haines@cookpad.com']

  spec.summary       = <<~ESUMMARY
  ESUMMARY
  spec.description = <<~EDESCRIPTION
  EDESCRIPTION
  spec.homepage      = ''
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'ridgepole-executor'
  spec.add_runtime_dependency 'swiftcore-tasks'
end
