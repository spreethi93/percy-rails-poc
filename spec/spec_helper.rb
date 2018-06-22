require 'test/unit'
require 'capybara/rspec'

RSpec.configure do |config|
	config.expect_with :stdlib
  	config.include ActiveSupport::Testing::Assertions
	config.before(:suite) { Percy::Capybara.initialize_build}
	config.after(:suite) {Percy::Capybara.finalize_build}
end