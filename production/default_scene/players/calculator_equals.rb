module CalculatorEquals
  def mouse_clicked(event)
    display = scene.find("display")
    begin
      display.text = eval(display.text)
    rescue SyntaxError
      display.text = ""
    end
  end
end