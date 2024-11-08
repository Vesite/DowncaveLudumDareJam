/// @desc

play_sound_ij(choose(sfx_lazer_1, sfx_lazer_2), 0.9, 1.1)

var _dir = point_direction(x, y, mouse_x, mouse_y)
var _x_check = x + lengthdir_x(16, _dir)
var _y_check = y + lengthdir_y(16, _dir)
var _check_limit = 500
while (collision_point(_x_check, _y_check, parent_collision, false, true) == noone) {
	
	//While this is the case we move the point a little bit
	_x_check += lengthdir_x(1, _dir)
	_y_check += lengthdir_y(1, _dir)
	
	_check_limit = max(_check_limit - 1, 0)
	if _check_limit == 0 {
		break
	}
	
}

//Spawn a lazer
var _list = ds_list_create()
collision_line_list(x, y, _x_check, _y_check, parent_enemy, false, true, _list, false)

for (var i = 0; i < ds_list_size(_list); ++i) {
    var _inst = ds_list_find_value(_list, i)
	with (_inst) {
		
		if _inst.object_index == tentacle or _inst.object_index == tentacle_extra {
			repeat (6) {
				with (instance_create_layer(_inst.x, _inst.y, "Projectiles", flamethrower_bullet)) {
					image_angle = irandom_range(0, 360)
					hsp = random_range(-0.3, 0.3)
					vsp = random_range(0.5, 2)
				}
			}
				
		}
		
		hp -= other.damage*player.damage_factor
		flash = irandom_range(5, 7)
		following = true
		
		if hp <= 0 {

			event_user(0)	
	
		}
		
		play_sound_ij(sfx_impact, 0.8, 1.2)
		
	}
}

ds_list_destroy(_list)

//Create Visual
constructor_draw_line_object(x, y, _x_check, _y_check, 4, c_purple, c_fuchsia, 60, 75)

