require_relative '../../gimmelicious'
 
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
 
World do
  Capybara.app = Gimmelicious
 
  include Capybara::DSL
  include RSpec::Matchers
end
