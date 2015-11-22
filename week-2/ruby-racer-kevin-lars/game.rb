require_relative 'player'

class Game

  attr_reader :players

  def initialize(board_length, player_1, player_2)
    @length = board_length
    @active_player = 1
    @players = [Player.new(player_1), Player.new(player_2)]
  end

  def roll_die
    rand(6)+1
  end

  def move_active_player
    @players[@active_player-1].move(roll_die)
  end

  def get_winner
    @players.each do | player |
      if player.position >= @length
        puts "Player #{player.name} wins!"
      end
    end
  end

  def switch_player
    @active_player == 1 ? @active_player = 2 : @active_player = 1
  end

  def get_positions
    positions =  [players[0].position, players[1].position]
  end

end

game = Game.new(30, "Kevin", "Lars")
p game.get_positions
p game.move_active_player
p game.get_positions
game.switch_player
30.times { game.move_active_player }
p game.get_winner
p game.get_positions






