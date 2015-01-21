class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    current = bottle_number(number)
    after = bottle_number(current.successor)
    "#{current.amount} of beer on the wall, ".capitalize +
    "#{current.amount} of beer.\n" +
    "#{current.action}, " +
    "#{after.amount} of beer on the wall.\n"
  end

  def bottle_number(number)
    case number
    when 0
      BottleNumber0.new(number)
    when 1
      BottleNumber1.new(number)
    when 6
      BottleNumber6.new(number)
    else
      BottleNumber.new(number)
    end
  end
end

class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def quantity
    number.to_s
  end

  def amount
    "#{quantity} #{container}"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def successor
    number - 1
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    'no more'
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    99
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end

end


class BottleNumber6 < BottleNumber
  def container
    "six-pack"
  end

  def quantity
    1.to_s
  end
end
