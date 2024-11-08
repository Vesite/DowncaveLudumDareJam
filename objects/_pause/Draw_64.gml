/// @desc

if global.paused = true {
	
	draw_set_alpha(0.93)
	draw_set_color(c_black)
	draw_rectangle(0, 0, global.view_width, global.view_height, false)
	
	draw_set_alpha(1)
	
	draw_set_color(c_white)
	draw_text_transformed(global.view_width/2, global.view_height*0.15, text_on_screen, text_scale, text_scale, 0)
	
}

