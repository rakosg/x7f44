class Box

  attr_reader :shut_tiles, :number_of_tiles, :tiles

  def initialize(number_of_tiles)
    @number_of_tiles = number_of_tiles
    @tiles = []
    @shut_tiles = []
  end

  def navigate_tiles
    self.navigate
  end

  private def navigate
    number_of_tiles.times do |i|
      tiles << i + 1
  end

  def shut?
    self.should_we_shut?
  end

  private def should_we_shut?
    @tiles.empty? && @shut_tiles.length == number_of_tiles
  end

  def can_flip_for?(value)
    false
  end

  def get_tiles
    tiles
  end

  def to_s
    "Box"
  end

end
