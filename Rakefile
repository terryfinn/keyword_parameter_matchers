require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Start a PRY session with KeywordParameterMatchers loaded'
task :console do
  require 'pry'
  require 'keyword_parameter_matchers'
  ARGV.clear
  Pry.start
end
