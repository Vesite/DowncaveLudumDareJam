/// @desc

play_sound_ij(sfx_gun, 0.8, 1.2)
play_sound_ij(sfx_shotgun_2, 0.9, 1.1)

with (instance_create_layer(x, y, "Projectiles", shotgun_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y) - random_range(10, 20)
	image_angle = direction
	
	hsp = lengthdir_x(move_speed, direction)
	vsp = lengthdir_y(move_speed, direction)
	
}

with (instance_create_layer(x, y, "Projectiles", shotgun_bullet)) {
	
	direction = point_direction(x, y, mouse_x, mouse_y) + random_range(10, 20)
	image_angle = direction
	
	hsp = lengthdir_x(move_speed, direction)
	vsp = lengthdir_y(move_speed, direction)
	
}

repeat (irandom_range(9, 13)) {
	
	with (instance_create_layer(x, y, "Projectiles", shotgun_bullet)) {
	
		direction = point_direction(x, y, mouse_x, mouse_y) + random_range(-40, 40)
		image_angle = direction
		
		hsp = lengthdir_x(move_speed, direction)
		vsp = lengthdir_y(move_speed, direction)
	
	}
	
	
	
}
