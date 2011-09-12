require "bundler/gem_tasks"

# BDD section

# RSpec part
require 'rspec/core/rake_task'
desc "Run specs"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w(--color)
end
namespace :spec do
  desc "Run specs with output in documentation format"
  RSpec::Core::RakeTask.new(:doc) do |t|
    t.rspec_opts = ["--color", "--format d"]
  end
end

unless ENV['TRAVIS']
  desc "Start Autotest CI"
  task :autotest => [".autotest", ".rspec"] do
    system "bundle exec autotest"
  end


  # Cucumber part
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features) do |features|
    features.cucumber_opts = "features --tags ~@wip --format progress"
  end
  namespace :features do
    Cucumber::Rake::Task.new(:pretty, "Run Cucumber features with output in pretty format") do |features|
      features.cucumber_opts = "features --tags ~@wip --format pretty"
    end
    Cucumber::Rake::Task.new(:wip, "Run @wip (Work In Progress) Cucumber features") do |features|
      features.cucumber_opts = "features --tags @wip --format progress"
    end
  end
end

# Default task
desc "Defaul task"
task :default => :spec

