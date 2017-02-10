# -*- encoding: utf-8 -*-
require File.expand_path('../lib/unf/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "unf"
  gem.version       = UNF::VERSION
  gem.authors       = ["Akinori MUSHA"]
  gem.email         = ["knu@idaemons.org"]
  gem.description   = <<-'EOS'
This is a wrapper library to bring Unicode Normalization Form support
to Ruby/JRuby.
  EOS
  gem.summary       = %q{A wrapper library to bring Unicode Normalization Form support to Ruby/JRuby}
  gem.homepage      = "https://github.com/knu/ruby-unf"
  gem.platform      = defined?(JRUBY_VERSION) ? 'java' : Gem::Platform::RUBY
  gem.license       = "2-clause BSDL"

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/.*\.rb})
  gem.require_paths = ["lib"]
  gem.extra_rdoc_files = ['README.md', 'LICENSE']

  gem.required_ruby_version = '>= 1.9.3'
  gem.extensions = 'ext/mkrf_conf.rb'

  gem.add_development_dependency 'bundler', '>= 1.2.0'
  gem.add_development_dependency 'rake', '>= 0.9.2.2'
  gem.add_development_dependency 'rdoc', '> 2.4.2'
  gem.add_development_dependency 'test-unit'
  gem.add_development_dependency 'unf_ext', '>= 0' unless defined?(JRUBY_VERSION)
end
