#!/usr/bin/env rake
require "bundler/gem_tasks"

task :default => 'test'

desc "Run all tests"
task :test => [:tlint, :spec] do
  puts "finished running all tests successfully!"
end

desc "Run rspec"
task :spec do
  puts "running rspec..."
  system "bundle exec rspec spec"
  raise "rspec failed!" unless $?.exitstatus == 0
end

desc "Run travis-lint"
task :tlint do
  puts "running travis-lint..."
  system "travis-lint"
  raise "lint failed!" unless $?.exitstatus == 0
end