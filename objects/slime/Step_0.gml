/// @desc


event_inherited()


if P exit


if S_R { var _fact = 1 }
else { var _fact = -1 }

if place_meeting(x + 1*_fact, y, parent_collision) {
	
	on_ground = true
	sprite_index = s_slime
	
} else {
	
	on_ground = false
	sprite_index = s_slime_air	
}

hsp += grv*_fact

hsp = hsp*0.95

if on_ground {
	if random(1) < 0.01 {
	
		hsp -= random_range(4, 6)*_fact
	
	}
}

#region Collision (Vertical and Horizontal)
		
	//Horizontal Collision
	if (place_meeting(x +hsp, y, parent_collision))
	{
		while (!place_meeting(x+sign(hsp),y,parent_collision))
		{
			x += sign(hsp)	
		}
		hsp = 0
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
	//show_message("sbuisdgbuisgbui")
}




