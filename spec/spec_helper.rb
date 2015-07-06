require 'simplecov'
SimpleCov.start

require 'capybara/rspec'

RSpec.configure do |config|

  config.backtrace_exclusion_patterns << /\.rvm\/gems/

  config.include Capybara::DSL

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end
