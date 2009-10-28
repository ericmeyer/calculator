row do
  display :id => "display"
end
row do
  calculator_number :id => 7, :text => 7, :players => "calculator_button"
  calculator_number :id => 8, :text => 8, :players => "calculator_button"
  calculator_number :id => 9, :text => 9, :players => "calculator_button"
end 
row do
  calculator_number :id => 4, :text => 4, :players => "calculator_button"
  calculator_number :id => 5, :text => 5, :players => "calculator_button"
  calculator_number :id => 6, :text => 6, :players => "calculator_button"
end
row do
  calculator_number :id => 1, :text => 1, :players => "calculator_button"
  calculator_number :id => 2, :text => 2, :players => "calculator_button"
  calculator_number :id => 3, :text => 3, :players => "calculator_button"
end
row do
  calculator_number :id => 0, :text => 0, :players => "calculator_button"
  calculator_function :id => "plus", :text => "+", :players => "calculator_button"
  calculator_equals :id => "equals", :text => "="
end