require File.expand_path('lib/maxon/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'maxon'
  spec.version               = Maxon::VERSION
  spec.authors               = ['Dmitry Zhuravlev']
  spec.email                 = ['coin20@protonmail.com']
  spec.summary               = 'Processing a text stream and returning n maximum numbers'
  spec.description           = 'The script accepts a text file as input. Returns the count of maximum numbers given by the parameter n. \
                                Numbers are extracted from text.'
  spec.homepage              = 'https://github.com/Doyal-N'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.files = Dir['README.md', 'LICENSE', 'lib/**/*.rb',
                  'maxon.gemspec', 'Gemfile',
                  'Makefile']

  spec.extra_rdoc_files = ['README.md']

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '~> 1.15'
  spec.add_development_dependency 'rubocop-performance', '~> 1.11'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'codecov', '~> 0.5'
  spec.add_development_dependency 'simplecov', '~> 0.20'
end
