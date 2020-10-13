class Questions 
  attr_accessor :number1, :number2, :answer

  def initialize()
    @number1 = rand(0...20)
    @number2 = rand(0...20)
    @answer = @number1 + @number2
  end
  def new_question(turn, player)
    puts ''
    puts "----- Q: #{turn} -----"
    puts "#{player}'s turn."
    print "What does #{@number1} plus #{@number2} equal? "
  end
  def correct(answer)
    @answer == answer.to_i
  end
end 

