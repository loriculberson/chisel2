require './test_helper'
require '../lib/strong_tag'

class StrongTagTest < Minitest::Test 
  attr_reader :strong_tag

  def setup
    @strong_tag = StrongTag.new
  end

  def test_it_exists
    
    assert strong_tag
  end

  def test_converts_double_asterisks
    
    assert_equal "<strong>Food &amp; Wine</strong>", strong_tag.parse("**Food & Wine**")
  end
end