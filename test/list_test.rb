require './test_helper'
require '../lib/list'

class ListTest < Minitest::Test 
  attr_reader :list

  def setup
    
    @list = List.new
  end

  def test_it_exists

    assert list
  end

  def test_it_can_convert_to_bullet_points
    
    
  end
end