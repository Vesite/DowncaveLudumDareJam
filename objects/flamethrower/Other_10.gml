/// @desc

play_sound_ij(sfx_flamethrower, 0.8, 1.2)

with (instance_create_layer(x, y, "Projectiles", flamethrower_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y) + random_range(-13, 13)
	image_angle = irandom_range(0, 360)
	hsp = lengthdir_x(move_speed, direction)*random_range(0.5, 1.5)
	vsp = lengthdir_y(move_speed, direction)*random_range(0.5, 1.5)
	
}
