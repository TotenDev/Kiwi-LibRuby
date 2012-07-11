#!/usr/bin/env rake
require "bundler/gem_tasks"

task :default => 'test'

desc "Run tests"
task :test do
  puts "running rspec..."
  system("bundle exec rspec spec")
  raise "rspec failed!" unless $?.exitstatus == 0
end