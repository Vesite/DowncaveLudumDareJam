
if P exit

time_remain = max(time_remain - 1, 0)

if time_remain == 0 { instance_destroy() }

#region move towards player!

	if (point_distance(x, y, player.x, player.y) < 38*player.xp_orb_magnet_factor)	
	{
	
		//Move towards player!
		var _acc = 0.06*player.xp_orb_magnet_factor
		var _dir = point_direction(x, y, player.x, player.y)
		hsp += lengthdir_x(_acc, _dir)
		vsp += lengthdir_y(_acc, _dir)
	
	}

#endregion

#region Horizontal

	//Friction
	hsp = approach(hsp, 0, hsp_fric)		

#endregion

#region Vertical

	vsp += grv

	if (vsp > vsp_max)
		vsp = approach(vsp,vsp_max,grv*1.1)

	if (vsp < -vsp_max)
		vsp = approach(vsp,-vsp_max,grv*1.1)

#endregion

#region Collision (Vertical and Horizontal)

	//Horizontal Collision
	if (place_meeting(x + hsp, y, parent_collision))
	{
		hsp = -hsp/1.1
	}
	x += hsp 

	//Vertical Collision
	if (place_meeting(x, y + vsp, parent_collision)) and (vsp > 0)
	{
		vsp = -(vsp*0.8) - 0.1
	}

	if (place_meeting(x, y+vsp, parent_collision)) and (vsp <= 0)
	{
		vsp = -(vsp)
	}

	y += vsp
	
#endregion

