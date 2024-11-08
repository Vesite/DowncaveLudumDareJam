/// @desc

if P exit

//Move
//Want to not have the curve synced with other skulls
//var _dir = direction + scr_wave(-45,45,3.5,0)
var _dir = direction + sin(random_number + y/y_pos_factor)*45
x += lengthdir_x(move_speed, _dir)
y -= lengthdir_y(move_speed, _dir)*1.5


if x < -100 or x > GAME_WIDTH + 100 or (y > (player.y + 1300)) {
	
	instance_destroy()	
}

hsp = hsp*0.995
vsp = vsp*0.99

x += hsp
y += vsp
