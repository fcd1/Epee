require 'test_helper'
require 'sword/composers/hyacinth_composer'
require 'sword/deposit_content'

class HyacinthComposerTest < ActiveSupport::TestCase
  setup do
    @deposit_content = Sword::DepositContent.new
    @deposit_content.title = 'Testing the Hyacinth Composer'
    @hyacinth_composer = Sword::Composers::HyacinthComposer.new
  end

  test "assert true" do
    result = @hyacinth_composer.compose_json( @deposit_content, 'test-project')
    assert_equal result, '{"project":{"string_key":"test-project"},"title":"Testing the Hyacinth Composer"}'
  end
end
