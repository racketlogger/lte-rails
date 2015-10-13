#!/usr/bin/env rake
require "bundler"
require "bundler/gem_tasks"

VERSION = Lte::Rails::VERSION

Bundler::GemHelper.install_tasks

TARGET_DIR = 'vendor/assets/stylesheets'
FULL_DIR = File.join(TARGET_DIR, "AdminLTE")

desc "Bundle the gem"
task :bundle  => [:bundle_install, :build_files] do
  sh 'gem build *.gemspec'
end

desc "Install the gem"
task :install  => [:bundle] do
  sh 'gem install *.gem'
  sh 'rm *.gem'
end


desc "Runs bundle install"
task :bundle_install do
  sh 'bundle install'
end

desc "Pushes the latest gem to rubygems"
task :push_gem => [:build] do
  sh "gem push pkg/lte-rails-#{VERSION}.gem"
end

desc "Copy the stylesheets from the sources"
task :build_files => [:clean] do
  FileUtils.cp_r "AdminLTE/build/less/", TARGET_DIR, preserve: true
  Dir.chdir TARGET_DIR do
    FileUtils.mv 'less', "AdminLTE"
    file = "AdminLTE/AdminLTE.less"
    text = File.read(file)
    repl = text.gsub(/\.\.\/bootstrap-less\//, 'twitter/bootstrap/')
    File.open(file, 'w') { |f| f << repl }
  end
end

desc "Clean the assets"
task :clean do
  FileUtils.rm_rf FULL_DIR
end

task(:default).clear
task :default => :bundle
