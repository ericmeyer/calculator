module CalculatorEquals
  def mouse_clicked(event)
    # sum = production.operands[0] + production.operands[1]
    # scene.find("display").text = sum
    production.calculator.press_equals
    scene.find("display").text = production.calculator.result
  end
end