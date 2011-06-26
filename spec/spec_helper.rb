# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'factory_girl'
require 'webrat'

Dir[Magnetism.root + "/spec/support/**/*.rb"].each   { |f| require File.expand_path(f) }
Dir[Magnetism.root + "/spec/factories/**/*.rb"].each { |f| require File.expand_path(f) }

RSpec.configure do |config|
  config.mock_with :rspec
  config.include Webrat::Matchers,    :type => [:controller, :helper, :view, :filter]
  config.include Devise::TestHelpers, :type => :controller

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) { DatabaseCleaner.start }
  config.after(:each)  { DatabaseCleaner.clean }
end
