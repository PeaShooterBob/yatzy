require 'minitest'
require 'minitest/unit'
require 'minitest/autorun'
require_relative 'yatzy'

class YatzyTest < MiniTest::Unit::TestCase
  def test_chance_scores_sum_of_all_dice
    assert_equal 15, Yatzy.chance(2,3,4,5,1)
    assert_equal 16, Yatzy.chance(3,3,4,5,1)
  end

  def test_yatzy_scores_50
    assert_equal 50, Yatzy.yatzy(4,4,4,4,4)
    assert_equal 50, Yatzy.yatzy(6,6,6,6,6)
    assert_equal 0, Yatzy.yatzy(6,6,6,6,3)
  end

  def test_score_dice_by_number
    assert_equal 0, Yatzy.score_dice_by_number(6,2,2,4,5,"one")
    assert_equal 1, Yatzy.score_dice_by_number(1,2,3,4,5,"one")
    assert_equal 2, Yatzy.score_dice_by_number(1,2,1,4,5,"one")

    assert_equal 0, Yatzy.score_dice_by_number(1,3,4,5,6,"two")
    assert_equal 4, Yatzy.score_dice_by_number(1,2,3,2,6,"two")

    assert_equal 0, Yatzy.score_dice_by_number(1,2,4,5,6,"three")
    assert_equal 6, Yatzy.score_dice_by_number(1,2,3,2,3,"three")

    assert_equal 0, Yatzy.score_dice_by_number(1,2,3,5,6,"four")
    assert_equal 8, Yatzy.score_dice_by_number(4,4,5,5,5,"four")

    assert_equal 0, Yatzy.score_dice_by_number(1,2,3,4,6,"five")
    assert_equal 15, Yatzy.score_dice_by_number(4,4,5,5,5,"five")

    assert_equal 0, Yatzy.score_dice_by_number(4,4,4,5,5,"six")
    assert_equal 6, Yatzy.score_dice_by_number(4,4,6,5,5,"six")
  end

end
