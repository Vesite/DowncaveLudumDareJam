/// @desc



//Check if "player" exists
if (instance_exists(player))
{
	follow_target = player
}
else
{
	follow_target = undefined	
}

//Tepeort the camera right to the player!
if not is_undefined(follow_target)
{
	x = follow_target.x
	y = follow_target.y
}
else
{
	y = 0
	x = 0
}
