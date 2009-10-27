module CalculatorNumber
  def mouse_clicked(event)
    production.calculator.press_number(self.text.to_i)
    scene.find("display").text = production.calculator.display #this should go away!
  end
end