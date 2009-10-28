row do
  display :id => "display"
end
row do
  calculator_button :id => 7, :text => 7, :styles => "calculator_number"
  calculator_button :id => 8, :text => 8, :styles => "calculator_number"
  calculator_button :id => 9, :text => 9, :styles => "calculator_number"
  calculator_button :id => "plus", :text => "+", :styles => "calculator_function"
end 
row do
  calculator_button :id => 4, :text => 4, :styles => "calculator_number"
  calculator_button :id => 5, :text => 5, :styles => "calculator_number"
  calculator_button :id => 6, :text => 6, :styles => "calculator_number"
  calculator_button :id => "minus", :text => "-", :styles => "calculator_function"
end
row do
  calculator_button :id => 1, :text => 1, :styles => "calculator_number"
  calculator_button :id => 2, :text => 2, :styles => "calculator_number"
  calculator_button :id => 3, :text => 3, :styles => "calculator_number"
  calculator_button :id => "multiply", :text => "*", :styles => "calculator_function"
end
row do
  calculator_button :id => 0, :text => 0, :styles => "calculator_number"
  calculator_equals :id => "equals", :text => "=", :styles => "calculator_function"
  calculator_button :id => "divide", :text => "/", :styles => "calculator_function"
  calculator_clear :id => "clear", :text => "C"
end