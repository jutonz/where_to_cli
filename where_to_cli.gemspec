# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','where_to_cli','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'where_to_cli'
  s.version = WhereToCli::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','where_to_cli.rdoc']
  s.rdoc_options << '--title' << 'where_to_cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'where_to_cli'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.1')
end
