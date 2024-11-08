/// @desc

other.hp -= damage
other.flash = flash_add
other.following = true

if other.hp <= 0 {

	with (other) {
		event_user(0)	
	}
	
}

play_sound_ij(sfx_impact, 0.8, 1.2)

instance_destroy()

