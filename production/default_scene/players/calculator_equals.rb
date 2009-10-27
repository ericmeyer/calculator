module CalculatorEquals
  def mouse_clicked(event)
    production.calculator.press_equals
    scene.find("display").text = production.calculator.result
  end
end