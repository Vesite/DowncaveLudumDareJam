/// @desc

// Inherit the parent event
event_inherited()

if P exit

image_angle = point_direction(x, y, x + hsp*10, y + vsp*10)

vsp -= 0.11

vsp = vsp*0.945

//move slighly towards the player
//var _dir = point_direction(x, y, player.x, player.y)
//hsp += lengthdir_x(move_speed*0.05, _dir)
//vsp += lengthdir_y(move_speed*0.05, _dir)

//hsp = approach(hsp, 0, move_speed*0.02)
//vsp = approach(hsp, 0, move_speed*0.02)

//hsp = approach(hsp, move_speed*0.5, move_speed*0.07)
//vsp = approach(hsp, move_speed*0.5, move_speed*0.07)

