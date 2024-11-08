/// @desc

player.player_xp += xp_value


with (player) {
	
	weapon_energy += orb_energy_gain
	weapon_energy = clamp(weapon_energy, 0, weapon_energy_max)

	event_user(2)
	
}

play_sound_ij(sfx_coin, 0.7, 1.3)

instance_destroy()


