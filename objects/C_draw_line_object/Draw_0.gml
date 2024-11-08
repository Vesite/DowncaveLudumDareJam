

//Line will fade out as duration goes down
draw_set_alpha(duration/duration_max)

draw_line_width_color(x1, y1, x2, y2, width_line, col1, col2)

draw_set_alpha(1)

duration = max(duration - 1, 0)
if duration == 0
	instance_destroy()
