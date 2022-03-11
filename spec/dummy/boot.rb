require 'rubygems'
require 'bundler'
Bundler.require

require 'active_support'
require 'active_support/dependencies'

DUMMY_APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))
Sidekiq.redis = {:url => "redis://localhost/15", :size => 5}

Dir[DUMMY_APP_ROOT.join('app/**/*.rb')].each { |f| require f }
