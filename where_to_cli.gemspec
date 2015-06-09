# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','whereto','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'where_to_cli'
  s.version = WhereToCli::VERSION
  s.author = 'Justin Toniazzo'
  s.email = 'jutonz42@gmail.com'
  s.homepage = 'https://github.com/jutonz/where_to_cli'
  s.license = 'MIT'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Helps you organize your media library by enforcing a consistent directory structure.'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','where_to_cli.rdoc']
  s.rdoc_options << '--title' << 'where_to_cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'whereto'

  s.add_development_dependency 'rake', '~> 10.4.2', '>= 10.4'
  s.add_development_dependency 'rdoc', '~> 4.2.0', '>= 4.2'
  s.add_development_dependency 'aruba', '~> 0.6.2', '>= 0.6'

  s.add_runtime_dependency 'where_to', '~> 0.9.0', '>= 0.9'
  s.add_runtime_dependency 'gli', '2.13.1'
end
