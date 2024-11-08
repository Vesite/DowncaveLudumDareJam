/// @desc

if P exit

if (mode = "Right")
{
	direction = 0	
	if (x > GAME_WIDTH + 40) { instance_destroy() }
}
else if (mode = "Left")
{
	direction = 180
	if (x < -40) { instance_destroy() }
}

//Move
//Want to not have the curve synced with other skulls
//var _dir = direction + scr_wave(-45,45,3.5,0)
var _dir = direction + sin(random_number + x/x_pos_factor)*45
x += lengthdir_x(move_speed,_dir)
y += lengthdir_y(move_speed,_dir)

