# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def verse(count)
    case count
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{count} bottles of beer on the wall, #{count} bottles of beer.\nTake one down and pass it around, #{count-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).collect { |count| verse(count) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
