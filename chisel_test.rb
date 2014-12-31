require "minitest/autorun"
require "minitest/pride"
require_relative "./chisel"

class ChiselTest < Minitest::Test 
  attr_reader :parser

  def setup
    @parser = Chisel.new
  end

  def test_it_exists
    
    assert parser
  end

  def test_it_converts_one_hashtag
 
    assert_equal "<h1> My Life in Desserts</h1>", parser.parse("# My Life in Desserts")
  end

  def test_it_converts_two_hashtags
    
    assert_equal "<h2> Chapter 1: The Beginning</h2>", parser.parse("## Chapter 1: The Beginning")
  end

  def test_it_converts_three_or_more_hashtags
    
     assert_equal "<h3>holla!</h3>", parser.parse("###holla!")
  end
 

  def test_converts_single_asterisk
  
   assert_equal "<em>have</em>", parser.parse("*have*")
  end


  def test_converts_double_asterisks
    
    assert_equal "<strong>Food &amp; Wine</strong>", parser.parse("**Food & Wine**")
  end

  def test_can_tag_a_paragraph

    assert_equal , parser.parse("You just *have* to try the cheesecake, he said. Ever since it appeared in
**Food & Wine** this place has been packed every night.")
  end
  

end



