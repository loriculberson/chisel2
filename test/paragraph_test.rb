require './test_helper'
require '../lib/paragraph'

class ParagraphTest < Minitest::Test 
  attr_reader :paragraph

  def setup
    @paragraph = Paragraph.new
  end

  def test_it_exists
  
    assert paragraph
  end


#   def test_can_tag_a_paragraph

#     assert_equal <p>
#   "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
#   <strong>Food &amp; Wine</strong> this place has been packed every night."
# </p>, parser.parse("You just *have* to try the cheesecake, he said. Ever since it appeared in
# **Food & Wine** this place has been packed every night.")
#   end

end