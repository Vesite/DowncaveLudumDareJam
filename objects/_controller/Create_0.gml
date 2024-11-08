
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(font_pixel_12x)
global.paused = false
global.inside_button = false
global.deepest = 0

randomize()

window_set_cursor(cr_none)



//Make the object a Singleton
if (assign_singleton() == false)	exit
