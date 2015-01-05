  def test_can_tag_a_paragraph

    assert_equal <p>
  "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
  <strong>Food &amp; Wine</strong> this place has been packed every night."
</p>, parser.parse("You just *have* to try the cheesecake, he said. Ever since it appeared in
**Food & Wine** this place has been packed every night.")
  end