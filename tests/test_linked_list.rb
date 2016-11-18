require "./lib/linked_list.rb"
require "test/unit"

class TestLinkedList < Test::Unit::TestCase

  def test_to_s
    assert_equal("", LinkedList.new)
  end

end