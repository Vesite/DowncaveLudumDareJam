/// @desc

if not instance_exists(player) { exit }

with (parent_collision) {
	
	if (y < (player.y - 1200)) {
		
		instance_destroy()
		
	}
	
}

with (bg_big) {
	
	if (y < (player.y - 1200)) {
		
		instance_destroy()
		
	}
	
}

with (parent_enemy) {
	
	if (y < (player.y - 1200)) {
		
		instance_destroy()
		
	}
	
}

with (weapon_pickup) {
	
	if (y < (player.y - 1200)) {
		
		instance_destroy()
		
	}
	
}
