default_scene {
  background_color "#555"
  vertical_alignment :center
  width "100%"
  height "100%"
}

display {
  font_size 48
  height 54
  width 500
  background_color :white
  border_color "#AAA"
  border_width 1
  horizontal_alignment :right
  vertical_alignment :center
  right_padding 5
  bottom_margin 5
}

row {
  width "100%"
  horizontal_alignment :center
}

calculator_button {
  height 170
  width 170
  rounded_corner_radius 80
  border_color :black
  border_width 1
  horizontal_alignment :center
  vertical_alignment :center
  margin 5
  gradient :on
  font_size 48
}

calculator_number {
  extends :calculator_button
  background_color "#999"
  secondary_background_color "#CCC"
  hover {
    border_color "#555"
    background_color "#AAA"
    secondary_background_color "#DDD"
  }
}

calculator_function {
  extends :calculator_button
  background_color "#a76200"
  secondary_background_color "#db8100"
  hover {
    background_color "#db8100"
    secondary_background_color "#ff9600"
  }
}