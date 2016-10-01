class Yatzy
  DIE_NUMBER_VALUE = { "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6 }

  def self.score(*dice, category)
    if category == "yatzy"
      yatzy(dice)
    elsif category == "chance"
      chance(dice)
    else
      score_dice_by_number(dice, category)
    end
  end

  private

  def self.chance(dice)
    dice.reduce(:+)
  end

  def self.yatzy(dice)
    dice.uniq.count == 1 ? 50 : 0
  end

  def self.score_dice_by_number(dice, die_number)
    die_value = DIE_NUMBER_VALUE[die_number]
    dice.select { |die| die == die_value}.count * die_value
  end
end
