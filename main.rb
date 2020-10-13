require './player'
require './questions'
require './game'

def players 
  print "Please enter your name for player1: "
  p1 = Player.new(gets.chomp)
  print "Please enter your name for player2: "
  p2 = Player.new(gets.chomp)
  return p1, p2
end
game = Game.new
puts "Wanna play a game???"
player1, player2 = players

until (player1.lives === 0 || player2.lives === 0) do 
  curr_player = (game.turn % 2 == 0) ? player2 : player1
  question = Questions.new
  question.new_question(game.turn, curr_player.name)
   answer = gets.chomp
   if question.correct(answer)
    puts "Yes! you are correct #{curr_player.lives}"
   else
    curr_player.lose_life
    if curr_player.lives > 0
      puts "Incorrect! you have #{curr_player.lives} remaining lives."
    else
      puts "Try harder next time!."
    end
  end
  if curr_player.lives > 0
    game.game_position(player1, player2)
  end
  game.next_game
end
game.game_winner(player1, player2)
