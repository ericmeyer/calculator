class Calculator
  attr_reader :operands, :result
  
  def initialize
    @operands = []
    @operand_in_progress = false
  end
  
  def press_number(number)
    if start_new_operand?
      @operand_in_progress = true
      @operands << number
    else
      @operands[-1] = (@operands[-1].to_s << number.to_s).to_i
    end
  end
  
  def press_function(function)
    @operand_in_progress = false
  end

  def press_equals
    @result = @operands[0] + @operands[1]
  end
  
  private ###############
  
  def start_new_operand?
    !@operand_in_progress
  end
end