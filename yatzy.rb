require 'pry'
class Yatzy

  def initialize(d1, d2, d3, d4, d5)
    @dice = [0]*5
    @dice[0] = d1
    @dice[1] = d2
    @dice[2] = d3
    @dice[3] = d4
    @dice[4] = d5
  end

  def self.chance(*dice)
    dice.reduce(:+)
  end

  def self.yatzy(*dice)
    dice.uniq.count == 1 ? 50 : 0
  end

  def self.ones(*dice)
    dice.select { |die| die == 1 }.count
  end

  def self.twos( d1,  d2,  d3,  d4,  d5)
    sum = 0
    if (d1 == 2)
      sum += 2
    end
    if (d2 == 2)
      sum += 2
    end
    if (d3 == 2)
      sum += 2
    end
    if (d4 == 2)
      sum += 2
    end
    if (d5 == 2)
      sum += 2
    end
    return sum
  end

  def self.threes( d1,  d2,  d3,  d4,  d5)
    s = 0
    if (d1 == 3)
      s += 3
    end
    if (d2 == 3)
      s += 3
    end
    if (d3 == 3)
      s += 3
    end
    if (d4 == 3)
      s += 3
    end
    if (d5 == 3)
      s += 3
    end
    return s
  end

  def fours
    sum = 0
    for at in Array 0..4
      if (@dice[at] == 4)
        sum += 4
      end
    end
    return sum
  end

  def fives()
    s = 0
    i = 0
    for i in (Range.new(0, @dice.size))
      if (@dice[i] == 5)
        s = s + 5
      end
    end
    s
  end

  def sixes
    sum = 0
    for at in 0..@dice.length
      if (@dice[at] == 6)
        sum = sum + 6
      end
    end
    return sum
  end

end
