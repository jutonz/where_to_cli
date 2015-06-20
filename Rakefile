# require 'rake/clean'
# require 'rubygems'
# require 'rubygems/package_task'
# require 'rdoc/task'
# Rake::RDocTask.new do |rd|
#   rd.main = "README.rdoc"
#   rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
#   rd.title = 'Your application title'
# end

# spec = eval(File.read('where_to_cli.gemspec'))

# Gem::PackageTask.new(spec) do |pkg|
# end

# require 'rake/testtask'
# Rake::TestTask.new do |t|
#   t.libs << "test"
#   t.test_files = FileList['test/*_test.rb']
# end

# task :default => [:test]

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :watch do
  folders_to_watch = 'bin lib spec'
  action_on_change = 'bundle exec rake'
  begin 
    gem 'filewatcher'
    sh "filewatcher '#{folders_to_watch}' '#{action_on_change}'"
  rescue Gem::LoadError
    puts 'You need to have the filewatcher gem installed to perform this task.'
    puts 'Install with \'gem install filewatcher\''
  end
end