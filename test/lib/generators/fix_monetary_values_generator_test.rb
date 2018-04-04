require 'test_helper'
require 'generators/fix_monetary_values/fix_monetary_values_generator'

class FixMonetaryValuesGeneratorTest < Rails::Generators::TestCase
  tests FixMonetaryValuesGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
