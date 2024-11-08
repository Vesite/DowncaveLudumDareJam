/// @desc

event_inherited()

with (instance_create_layer(x, y, "Enemies", cloud)) {
	
	if x > player.x {
		hsp = random_range(1, 3)
	} else {
		hsp = random_range(-1, -3)	
	}
	
	vsp = random_range(-2, -3)
	
}

with (instance_create_layer(x, y, "Enemies", cloud)) {
	
	if x > player.x {
		hsp = random_range(1, 3)
	} else {
		hsp = random_range(-1, -3)	
	}
	
	vsp = random_range(-2, -3)
	
}

instance_destroy()
