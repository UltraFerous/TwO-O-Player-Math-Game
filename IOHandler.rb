class IOHandler
  attr_accessor :correct

  def initialize(user_input, answer_number)
    @correct = (user_input == answer_number)
  end
end