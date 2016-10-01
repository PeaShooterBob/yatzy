require 'minitest'
require 'minitest/unit'
require 'minitest/autorun'
require_relative 'yatzy'

class YatzyTest < MiniTest::Unit::TestCase
  def test_score
    assert_equal 50, Yatzy.score(4,4,4,4,4,"yatzy")
    assert_equal 50, Yatzy.score(6,6,6,6,6,"yatzy")

    assert_equal 15, Yatzy.score(2,3,4,5,1,"chance")
    assert_equal 15, Yatzy.score(2,3,4,5,1,"chance")
    assert_equal 16, Yatzy.score(3,3,4,5,1,"chance")

    assert_equal 0, Yatzy.score(6,2,2,4,5,"one")
    assert_equal 5, Yatzy.score(1,1,1,1,1,"one")

    assert_equal 0, Yatzy.score(1,2,3,4,6,"five")
    assert_equal 15, Yatzy.score(4,4,5,5,5,"five")
  end
end
