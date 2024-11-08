/// @desc

play_sound_ij(sfx_gun, 0.8, 1.2)

with (instance_create_layer(x, y, "Projectiles", gun_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y)
	image_angle = direction
	
	hsp = lengthdir_x(move_speed, direction)
	vsp = lengthdir_y(move_speed, direction)
	
}
