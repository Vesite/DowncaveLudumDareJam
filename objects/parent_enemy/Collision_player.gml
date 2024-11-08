/// @desc

if player.invis_frames == 0 {
	
	player.hp -= damage
	
	constructor_draw_damage(player.x, player.y, damage, 60)
	
	with (player) {
		
		event_user(1)	
	
	}
}
