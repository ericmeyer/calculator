module CalculatorNumber
  def mouse_clicked(event)
    scene.find("display").text = self.text #this should go away!
    production.calculator.press_number(self.text.to_i)
  end
end