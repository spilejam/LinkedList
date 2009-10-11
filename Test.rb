require "test/unit"
require "LinkedList"

class TC_LinkedList001 < Test::Unit::TestCase
  def setup
    @ll = LinkedList.new
  end

  def test_insert
    @ll.insert(1)
    assert_equal([1], @ll.showall)

    @ll.insert(2)
    assert_equal([1,2], @ll.showall)

    @ll.insert(3)
    assert_equal([1,2,3], @ll.showall)
  end

  def test_delete
    @ll.insert(1)
    assert_equal([1], @ll.showall)

    @ll.insert(2)
    assert_equal([1,2], @ll.showall)

    @ll.insert(3)
    assert_equal([1,2,3], @ll.showall)

    @ll.delete
    assert_equal([1,2], @ll.showall)

    @ll.delete
    assert_equal([1], @ll.showall)
  end

  def test_clear
    @ll.clear
    assert_equal([], @ll.showall)
  end
end
