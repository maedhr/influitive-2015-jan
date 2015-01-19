# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def verse(bottle_count)
    next_bottle_count = bottle_count.pred

    <<-VERSE
#{bottle_stanza(bottle_count)} of beer on the wall, #{bottle_stanza(bottle_count)} of beer.
Take one down and pass it around, #{bottle_stanza(next_bottle_count)} of beer on the wall.
    VERSE
  end

  def bottle_stanza(bottle_count)
    if bottle_count.zero?
      "no more bottles"
    else
      "#{bottle_count} #{single_or_mutliple_bottles(bottle_count)}"
    end
  end

  def single_or_mutliple_bottles(bottle_count)
    bottle_count == 1 ? 'bottle' : 'bottles'
  end
end
