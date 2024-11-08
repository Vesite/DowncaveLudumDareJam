/// @desc Check for Level up

//Level up
if player_xp >= player_xp_required {
	
	play_sound_ij(sfx_level_up, 1, 1)
	
	var _extra = player_xp - player_xp_required
	level += 1
	player_xp = _extra
	
	if level < 50 {
		player_xp_required = (5 + (level-1)*2)
	} else if level < 100 {
		player_xp_required = (5 + (level-1)*4)
	} else if level < 150 {
		player_xp_required = (5 + (level-1)*6)	
	} else {
		player_xp_required = (5 + (level-1)*10)	
	}
	
	with (_pause) { event_user(0) }
	
}


