class Question
  attr_accessor :first_number
  attr_accessor :second_number
  attr_accessor :answer_number

  def initialize()
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @answer_number = @first_number + @second_number
  end
end