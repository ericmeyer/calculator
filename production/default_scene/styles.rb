default_scene {
  gradient :on
  background_color "#555"
  secondary_background_color "#777"
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
  height 130
  width 130
  rounded_corner_radius 60
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

calculator_clear {
  extends :calculator_button
  background_color "#6f0000"
  secondary_background_color "#920000"
  hover {
    background_color "#910000"
    secondary_background_color "#a90000"
  }
}