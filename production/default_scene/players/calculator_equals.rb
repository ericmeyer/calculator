module CalculatorEquals
  def mouse_clicked(event)
    sum = production.operands[0] + production.operands[1]
    scene.find("display").text = sum
  end
end