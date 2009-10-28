module CalculatorEquals
  def mouse_clicked(event)
    display = scene.find("display")
    display.text = eval(display.text)
  end
end