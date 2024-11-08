/// @desc

draw_set_alpha(duration/duration_max)
duration = max(duration - 1, 0)

y -= 0.25

draw_set_color(c_black)
draw_text(x + 1, y + 1, "-" + string(text))
draw_set_color(c_red)
draw_text(x, y, "-" + string(text))

draw_sprite(s_heart, 0, x + 15, y,)

draw_set_color(c_white)
draw_set_alpha(1)
