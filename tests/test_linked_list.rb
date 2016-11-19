require "./lib/linked_list.rb"
require "test/unit"

class TestLinkedList < Test::Unit::TestCase

  def test_size
    ll = LinkedList.new
    ll.append("foo")
    ll.append("bar")
    assert_equal(2, ll.size)
  end

  def test_at
    ll = LinkedList.new
    ll.append("foo")
    ll.append("bar")
    ll.append("baz")
    assert_equal("foo", ll.at(0))
    assert_equal("bar", ll.at(1))
    assert_equal("baz", ll.at(2))
  end
  
  def test_pop
    ll = LinkedList.new
    ll.prepend("baz")
    ll.prepend("bar")
    ll.prepend("foo")
    assert_equal("baz", ll.pop)
    assert_equal("bar", ll.pop)
  end

  def test_contains?
    ll = LinkedList.new
    ll.append("foo")
    ll.append("bar")
    ll.append("baz")
    assert_true(ll.contains? "bar")
    assert_false(ll.contains? "sadfasfsda")
  end
  
  def test_find
    ll = LinkedList.new
    ll.append("foo")
    ll.append("bar")
    ll.append("baz")
    assert_equal(2, ll.find("baz"))
    assert_equal(nil, ll.find("dsfasdfsaf"))
  end

  def test_to_s
    ll = LinkedList.new
    
    assert_equal("nil", ll.to_s)
    
    ll.append("foo")
    ll.append("bar")
    ll.append("baz")
    
    assert_equal("( foo ) -> ( bar ) -> ( baz ) -> nil", ll.to_s)
  end

end