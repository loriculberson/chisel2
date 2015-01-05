

  def test_converts_double_asterisks
    
    assert_equal "<strong>Food &amp; Wine</strong>", parser.parse("**Food & Wine**")
  end