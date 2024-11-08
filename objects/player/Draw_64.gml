/// @desc

draw_text(GAME_WIDTH*0.87, 40, "Depth: " + string(round(global.deepest/32) - 5) + "m")

if DEV
	draw_text(GAME_WIDTH*0.5, GAME_HEIGHT*0.8, _world_generator.depth_var)
//if DEV
//	draw_text(GAME_WIDTH*0.5, 40, "Hp " + string(hp))

#region Draw Hp

var _x_start = GAME_WIDTH*0.033
var _y = GAME_HEIGHT*0.07

for (var _i = 0; _i < hp; _i++) {
    draw_sprite(s_heart, 0, _x_start + 20*_i, _y)
}




#endregion

draw_set_halign(fa_left)
draw_text(GAME_WIDTH*0.025, GAME_HEIGHT*0.15, "Damage: " + string(round(damage_factor*100)) + "%")
draw_text(GAME_WIDTH*0.025, GAME_HEIGHT*0.22, "Attack Speed: " + string(round(as_factor*100)) + "%")
draw_set_halign(fa_center)


//Draw energy-bar
//var _x_mid = GAME_WIDTH*0.5
//var _y_start = GAME_HEIGHT*0.84
//var _l2 = GAME_WIDTH*0.18
//var _h = GAME_HEIGHT*0.09

#region Draw Weapon energy

	var _x_start = GAME_WIDTH*0.94
	var _w = GAME_WIDTH*0.035
	var _y_start = GAME_HEIGHT*0.65
	var _h = GAME_HEIGHT*0.3

	draw_set_color(c_gray)
	draw_rectangle(_x_start, _y_start, _x_start + _w, _y_start + _h, false)

	//Draw green bar
	draw_set_color(c_green)
	draw_rectangle(_x_start, _y_start + _h - _h*(weapon_energy/weapon_energy_max), _x_start + _w, _y_start + _h, false)
	
	draw_set_color(c_white)
	draw_set_halign(fa_right)
	draw_text(_x_start - 4, _y_start + 40, "Energy\n" + string(floor(weapon_energy)) + "/" + string(weapon_energy_max))
	draw_text(_x_start - 4, _y_start + 70, "+" + string(weapon_energy_regen_total) + "/s")

#endregion


#region Draw level

	var _x_start = GAME_WIDTH*0.025
	var _w = GAME_WIDTH*0.26
	var _y_start = GAME_HEIGHT*0.92
	var _h = GAME_HEIGHT*0.055

	draw_set_color(c_gray)
	draw_rectangle(_x_start, _y_start, _x_start + _w, _y_start + _h, false)

	//Draw green bar
	draw_set_color(c_green)
	if player_xp != 0
		draw_rectangle(_x_start, _y_start, _x_start + _w*(player_xp/player_xp_required), _y_start + _h, false)

	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_text(_x_start + 4, _y_start - 26, "Level " + string(level))
	draw_text(_x_start + 4, _y_start - 10, "Xp: " + string(player_xp) + "/" + string(player_xp_required))

#endregion

//Reset
draw_set_color(c_white)
draw_set_halign(fa_center)
