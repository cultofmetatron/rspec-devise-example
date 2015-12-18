#include Devise::TestHelpers
require 'support/controller_helpers'
RSpec.configure do |config|
  config.include Devise::TestHelpers
  config.include ControllerHelpers
end
