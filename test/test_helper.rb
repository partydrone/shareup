ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'
require 'database_cleaner'
require 'miniskirt'

DatabaseCleaner.strategy = :transaction

Dir[File.expand_path('test/factories/**/*.rb')].each { |file| require file }
Dir[File.expand_path('test/support/**/*.rb')].each { |file| require file }

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionController::TestCase
  include Devise::TestHelpers
end
