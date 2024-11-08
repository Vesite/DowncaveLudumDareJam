/// @desc


if x > player.x {
	
	//Move bullets to the right
	while (place_meeting(x, y, parent_collision)) {
		
		x -= 1
		
	}
	x -= 1

} else {
	
	//Move bullets to the left
	while (place_meeting(x, y, parent_collision)) {
		
		x += 1
		
	}
	x += 1
	
}


//Default
move_speed = 2
time_alive = 10
bounce = false
bounce_factor = 1
hsp = 0
vsp = 0
