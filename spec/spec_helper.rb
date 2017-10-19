require 'puppetlabs_spec_helper/module_spec_helper'

spec_path = File.dirname(File.expand_path(__FILE__))

RSpec.configure do |c|
  c.module_path = File.join(spec_path, 'fixtures', 'modules')

  c.mock_with :rspec
end
