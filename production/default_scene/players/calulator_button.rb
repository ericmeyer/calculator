module CalculatorButton
  def mouse_clicked(event)
    scene.find("display").text = self.text
  end
end