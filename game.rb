class Game 
  attr_accessor :turn 
  def initialize ()
    @turn = 1
  end 

  def next_game
    @turn += 1
  end
  
  def game_position(p1, p2)
    puts "#{p1.name}: #{p1.lives} / 3      #{p2.name}: #{p2.lives} / 3"
  end

  def game_winner(p1, p2)
    #game_winner = p1.lives > p2.lives || game_winner =  p1.lives < p2.lives
    game_winner = p1.lives > p2.lives ? p1 : p2
    puts ''
    puts " #{game_winner.name}, is the game_winner. You have #{game_winner.lives} lives remaining."
  end
end 
