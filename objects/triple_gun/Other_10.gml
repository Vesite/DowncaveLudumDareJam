/// @desc

play_sound_ij(sfx_triple, 0.8, 1.2)

with (instance_create_layer(x, y, "Projectiles", triple_gun_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y)
	image_angle = direction
	hsp = lengthdir_x(move_speed, direction)
	vsp = lengthdir_y(move_speed, direction)*4
	
}

with (instance_create_layer(x, y, "Projectiles", triple_gun_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y) + 20
	image_angle = direction
	hsp = lengthdir_x(move_speed, direction)
	vsp = lengthdir_y(move_speed, direction)*4
	
}

with (instance_create_layer(x, y, "Projectiles", triple_gun_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y) - 20
	image_angle = direction
	hsp = lengthdir_x(move_speed, direction)
	vsp = lengthdir_y(move_speed, direction)*4
	
}
