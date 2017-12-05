class Question

  attr_accessor :answer
  
  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @answer = @first_number + @second_number
  end
  
  def math_question
    "What is #{@first_number} plus #{@second_number}?"
  end

end