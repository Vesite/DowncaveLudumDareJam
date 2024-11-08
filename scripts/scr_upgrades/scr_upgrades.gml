

function func_restart() {

	game_restart()
	
}

function spawn_new_weapon(_weapon) {
	
	with (parent_gun) { instance_destroy() }
	
	var _id = instance_create_layer(x, y, "Projectiles", _weapon)
	_id.x = player.x
	_id.y = player.y
	
	player.weapon_energy_max += 5
	player.weapon_energy = player.weapon_energy_max
	
	with (_pause) { event_user(1) }
	
}

function show_assets() {
	
	with (_pause) { event_user(1) }
	
	with (_pause) { event_user(4) }
	
}

function show_info() {
	
	with (_pause) { event_user(1) }
	
	with (_pause) { event_user(5) }
	
}

function func_exit_pasue() {
	
	with (_pause) { event_user(1) }
	
}

//function get_upgrade_hp_1() {
	
//	player.hp += 1
	
//	with (_pause) { event_user(1) }
	
//}

function get_upgrade_hp_3() {
	
	player.hp += 3
	
	with (_pause) { event_user(1) }
	
}

//function get_upgrade_hp_4() {
	
//	player.hp += 4
	
//	with (_pause) { event_user(1) }
	
//}


//function get_upgrade_damage_30() {
	
//	player.damage_factor += 0.3
	
//	with (_pause) { event_user(1) }
	
//}

function get_upgrade_damage_25() {
	
	player.damage_factor += 0.25
	
	with (_pause) { event_user(1) }
	
}

//function get_upgrade_as_30() {
	
//	player.as_factor += 0.3
	
//	with (_pause) { event_user(1) }
	
//}

function get_upgrade_as_25() {
	
	player.as_factor += 0.25
	
	with (_pause) { event_user(1) }
	
}

function get_reduce_hori_knockback() {
	
	player.horizontal_kb_factor = player.horizontal_kb_factor*0.7
	
	with (_pause) { event_user(1) }
	
}

function get_xp_orbs_lasts_longer() {
	
	player.xp_orb_duration_extra += 10
	
	with (_pause) { event_user(1) }
	
}

function get_better_xp_orb_magnet() {
	
	player.xp_orb_magnet_factor += 0.9
	
	with (_pause) { event_user(1) }
	
}

function get_bonus_energy_from_orb() {

	player.orb_energy_gain += 3
	
	with (_pause) { event_user(1) }
	
}

//function get_bonus_jump() {
	
//	player.extra_jumps_amount += 1
//	player.extra_jumps_ready = player.extra_jumps_amount
	
//	with (_pause) { event_user(1) }
	
//}

function get_bonus_damage_hp() {
	
	player.damage_factor += 0.5
	
	player.hp -= 4
	
	with (instance_create_layer(player.x, player.y - 12, "Top", C_draw_damage)) {
		text = 4
	}
	
	with (player) {
		
		event_user(1)	
	
	}
	
	with (_pause) { event_user(1) }
	
}

function get_bonus_jump() {
	
	with (player) {
		
		extra_jumps_amount += 2
		extra_jumps_ready = extra_jumps_amount
	
		weapon_energy_max -= 4
		weapon_energy = max(weapon_energy, 0)
		
	}
	
	with (_pause) { event_user(1) }
	
}



