/// @desc


event_inherited()

if P exit

//Check "on_ground"
if place_meeting(x, y + 1, parent_collision) {
	on_ground = true
} else {
	on_ground = false
}

vsp += grv

vsp = vsp*0.95

if on_ground {
	if random(1) < 0.015 {
	
		vsp -= random_range(1.5, 6)
		hsp += random_range(-2, 2)
		
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
		hsp = -hsp
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




