require_relative "../../gimmelicious"
 
require "Capybara"
require "Capybara/cucumber"
require "rspec"
 
World do
  Capybara.app = Gimmelicious
 
  include Capybara::DSL
  include RSpec::Matchers
end