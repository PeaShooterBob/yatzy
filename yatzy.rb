class Yatzy
  DIE_NUMBER_VALUE = { "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6 }
  SCORING_CATEGORIES = ["yatzy", "chance"] + DIE_NUMBER_VALUE.keys

  def self.score(*dice, category)
    check_for_correct_arguments(dice, category)

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

  def self.check_for_correct_arguments(dice, category)
    correct_number_of_dice(dice)
    correct_category(category)
  end

  def self.correct_number_of_dice(dice)
    if dice.count != 5
      raise ArgumentError.new("You must have only five dice")
    end
  end

  def self.correct_category(category)
    if !SCORING_CATEGORIES.include?(category)
      raise ArgumentError.new("You must score using one of these categories #{SCORING_CATEGORIES}")
    end
  end

end
