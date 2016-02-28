# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require "bundler/setup"
# Require the gems in the Gemfile
Bundler.require(:default) if defined?(Bundler)

require "dotenv"
require "dotenv/rails-now"

require File.expand_path('../config/application', __FILE__)
Rails.application.load_tasks
