module CalculatorNumber
  def mouse_clicked(event)
    scene.find("display").text = self.text
    production.operands << self.text.to_i
    production.calculator.press_number(self.text.to_i)
  end
end