# coding: utf-8

require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'
Rubocop::RakeTask.new

task default: %w[rubocop spec]
