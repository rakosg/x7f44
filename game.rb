class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  W_M = "You shut da box!"

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    box.shut? || box.can_flip_for?(dice.map(&:value).reduce(:+))
  end

  def start!
    prepare_next_round
  end

  private def prepare_next_round
    dice.each(&:roll!)
  end

  private def retrieve_tiles
    box.get_tiles().each do |tile|
      print tile.to_s + ' | '
    end
  end

  private def die_values
    dice.each do |die|
      print "#{die.value} "
    end
  end

  def play
    print '| '
    retrieve_tiles
    print "\n"
    print "You rolled: "
    die_values
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
    prepare_next_round
  end

  def results
    box.shut? ? W_M : "Game over, you did not shut da box."
  end

end
