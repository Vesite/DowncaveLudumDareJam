/// @desc

if P exit

if not instance_exists(player) {
	instance_destroy()	
	exit
}

x = player.x + player.weapon_offset_x
y = player.y + player.weapon_offset_y
var _aim_dir = point_direction(x, y, mouse_x, mouse_y)
image_angle = _aim_dir


attack_cd = max(attack_cd - 1, 0)
if attack_cd == 0 and _input_manager.mouse_any_hold and (not (global.inside_button == true)) and _pause.cant_shoot_timer == 0 {
	
	if (floor(player.weapon_energy) >= energy_consume) {
	
		attack_cd = attack_cd_value*(1/player.as_factor)
		player.weapon_energy -= energy_consume
		
		//Fire the bullet
		event_user(0)
	
	} else {
		
		attack_cd = attack_cd_value*(1/player.as_factor)
		play_sound_ij(choose(sfx_no_ammo_2, sfx_no_ammo), 0.8, 1.2)
		
	}
	
}

global.inside_button = false
