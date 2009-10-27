class Calculator
  attr_reader :operands, :result, :display
  
  def initialize
    @operands = []
    @operand_in_progress = false
    @observers = []
  end
  
  def press_number(number)
    if start_new_operand?
      @operand_in_progress = true
      @operands << number
    else
      @operands[-1] = (@operands[-1].to_s << number.to_s).to_i
    end
    notify_observers(@operands.last)
  end
  
  def press_function(function)
    @operand_in_progress = false
  end

  def press_equals
    @result = @operands[0] + @operands[1]
    notify_observers(@result)
  end
  
  def register_display_observer(observer)
    @observers << observer
  end
  
  private ###############
  
  def notify_observers(message)
    @display = message
    @observers.each { |observer| observer.observe(message) }
  end
  
  def start_new_operand?
    !@operand_in_progress
  end
end