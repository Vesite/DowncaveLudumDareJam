/// @desc


if draw_in_gui exit

if fade_in_time_max != 0 {

	fade_in_time = max(fade_in_time - 1, 0)
	draw_set_alpha((fade_in_time_max - fade_in_time)/fade_in_time_max)

}


draw_sprite_stretched(s_frame_9slice, 0, x - width/2, y - height/2, width, height)

if ind_var[0] != 0 {
	global.inside_button = true
	draw_highlight(x - width/2, y - height/2, x + width/2, y + height/2, 1)
}

draw_set_color(c_black)
draw_text(x, y, text)
draw_set_color(c_white)

draw_set_alpha(1)



