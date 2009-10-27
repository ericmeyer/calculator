default_scene {
  background_color "#555"
  vertical_alignment :center
  width "100%"
  height "100%"
}

row {
  width "100%"
  horizontal_alignment :center
}

calculator_number {
  height 170
  width 170
  rounded_corner_radius 80
  border_color :black
  border_width 1
  horizontal_alignment :center
  vertical_alignment :center
  margin 5
  gradient :on
  background_color "#999"
  secondary_background_color "#CCC"
  font_size 48
  hover {
    border_color "#555"
    background_color "#AAA"
    secondary_background_color "#DDD"
  }
}