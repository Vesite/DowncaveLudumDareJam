/// @desc

other.hp -= damage
other.flash = flash_add
other.following = true

if other.hp <= 0 {

	with (other) {
		event_user(0)	
	}
	
}

play_sound_ij(hit_sound, 0.8, 1.2)

pierce = max(pierce - 1, 0)
if pierce == 0 {
	instance_destroy()
}
