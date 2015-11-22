class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @length = length
    @hash = {a: 0, b: 0}
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    if @hash[:a] >=30
      @victor = :a
      return true
    elsif @hash[:b] >=30
      @victor = :b
      return true
    end
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
      return @victor
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    roll = die.roll
      x = @hash[player] += roll
      x >= 30 ? @hash[player] = 30 : @hash[player] = x
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
      @board_a = Array.new(length) * "|" + "| " + @hash[:a].to_s
      @board_b = Array.new(length) * "|" + "| " + @hash[:b].to_s
      @board_a.insert(@hash[:a], "a")
      @board_b.insert(@hash[:b], "b")
      @board = @board_a.scan(/.{1,1}/).join(' ') + "\n" + @board_b.scan(/.{1,1}/).join(' ')
    return @board
  end
end