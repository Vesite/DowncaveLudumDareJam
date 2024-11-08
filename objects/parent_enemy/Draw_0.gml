/// @desc


if golden {
	
	shader_set(sh_golden)
}

if shadow {
	
	shader_set(sh_shadow)
	draw_sprite(s_golden_border, 1, x, y) 
	
}

if flash > 0
	shader_set(sh_flash)

flash = max(flash - 1, 0)

draw_self()

shader_reset()

if golden { draw_sprite(s_golden_border, 1, x, y) }
	
	
	