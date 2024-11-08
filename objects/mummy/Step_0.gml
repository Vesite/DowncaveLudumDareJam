/// @desc

if P exit

if walk_direction == DIRECTION.LEFT {
	
	image_xscale = 1
	
	hsp -= acc
	hsp = approach(hsp, -hsp_max, acc*1.1)
	
} else if walk_direction == DIRECTION.RIGHT {
	
	image_xscale = -1
	
	hsp += acc
	hsp = approach(hsp, hsp_max, acc*1.1)
	
}

//Check "on_ground"
if place_meeting(x, y + 1, parent_collision) {
	on_ground = true
} else {
	on_ground = false
}

//Jump
if on_ground {
	
	if random(1) < 0.02 {
		vsp -= random_range(3, 4.5)
	}
	
	falling_timer = 0
	
}

//Despawn
if not on_ground {
	
	//If we are falling
	falling_timer += 1
	
}
if falling_timer > 60*16 { instance_destroy() }


vsp += grv
vsp = approach(vsp, vsp_max, grv*1.1)


#region Turn towards the player once

	if instance_exists(player) {
	
		if point_distance(x, y, player.x, player.y) < 80
		and not collision_line(x, y, player.x, player.y, parent_collision, false, true)
		and have_turned_to_player == false {
		
			if ((player.x > x) and (walk_direction == DIRECTION.LEFT)) {
				have_turned_to_player = true
				walk_direction = DIRECTION.RIGHT
			}
		
			if ((player.x < x) and (walk_direction == DIRECTION.RIGHT)) {
				have_turned_to_player = true
				walk_direction = DIRECTION.LEFT
			}	
	
		}
	}

#endregion


#region Collision (Vertical and Horizontal)
		
	//Horizontal Collision
	if (place_meeting(x +hsp, y, parent_collision))
	{
		while (!place_meeting(x+sign(hsp),y,parent_collision))
		{
			x += sign(hsp)	
		}
		hsp = 0
		if walk_direction == DIRECTION.LEFT { walk_direction = DIRECTION.RIGHT }
		else if walk_direction == DIRECTION.RIGHT { walk_direction = DIRECTION.LEFT}
	}
	x += hsp

	//Vertical Collision
	if (place_meeting(x,y+vsp,parent_collision))
	{
		while (!place_meeting(x,y+sign(vsp),parent_collision))
		{
			y += sign(vsp)	
		}
		vsp = 0
	}
	y += vsp
		
#endregion

if place_meeting(x, y, parent_collision) {
	instance_destroy()
}
