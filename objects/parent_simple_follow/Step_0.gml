/// @desc

if P exit
if not instance_exists(player) exit

// Move towards the player if they are near
if point_distance(x, y, player.x, player.y) < follow_range {
	
	following = true
	
}

if following {
	
	if do_x_flip {
		if (player.x > x)	//Then the player is on the right side!
		{
			image_xscale = -1
		}
		else				//Then the player is on the left side!
		{
			image_xscale = 1
		}
	}
	
	//Move towards player!
	var _dir = point_direction(x, y + sprite_height/2, player.x, player.y)
	hsp += lengthdir_x(move_speed, _dir)
	vsp += lengthdir_y(move_speed, _dir)
	
	#region Limit speed
	
		//This part reduces the speed when we are at max speed
		if (hsp >= max_speed) hsp -= .2

		if (hsp <= -max_speed) hsp += .2

		if (vsp >= max_speed) vsp -= .2

		if (vsp <= -max_speed) vsp += .2
	
	#endregion
	
	#region Collision (Vertical and Horizontal)
		
		//Horizontal Collision
		if (place_meeting(x +hsp, y, parent_collision))
		{
			while (!place_meeting(x+sign(hsp),y,parent_collision))
			{
				x += sign(hsp)	
			}
			hsp = -hsp*0.5
		}
		x += hsp

		//Vertical Collision
		if (place_meeting(x,y+vsp,parent_collision))
		{
			while (!place_meeting(x,y+sign(vsp),parent_collision))
			{
				y += sign(vsp)	
			}
			vsp = -vsp*0.5
		}
		y += vsp
		
	#endregion
	
}
