# coding: utf-8
require File.expand_path('../lib/lte/rails/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "lte-rails"
  spec.version       = Lte::Rails::VERSION
  spec.authors       = ["Carlos Puchol"]
  spec.email         = ["cpg+git at racketlogger.com"]

  spec.summary       = %q{ Provides Admin LTE assets}
  spec.description   = %q{ This gem provides all the assets for Admin LTE for use in a rails project}
  spec.homepage      = "https://github.com/racketlogger/admin-lte-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }

  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_path  = 'lib'

  #spec.add_dependency         'less-rails', '~> 2.4'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"

  spec.add_development_dependency 'less', '~> 2.6', '~> 2.6.0'

  spec.add_runtime_dependency 'less-rails-bootstrap', '~> 3.3'
  spec.add_runtime_dependency 'less-rails', '~> 2.6'

end
