module CalculatorClear
  def mouse_clicked(event)
    scene.find("display").text = ""
  end
end