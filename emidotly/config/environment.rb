# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Emidotly::Application.initialize!

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
