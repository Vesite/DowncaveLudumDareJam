/// @desc

draw_self()

var _l = 18
var _x_start = player.x - _l/2
var _y_start = player.y + 16
var _h = 2

draw_set_color(c_gray)
draw_rectangle(_x_start, _y_start, _x_start + _l, _y_start + _h, false)

draw_set_color(c_green)
	draw_rectangle(_x_start, _y_start, _x_start + _l*(1 - (attack_cd/attack_cd_value*player.as_factor)), _y_start + _h, false)

