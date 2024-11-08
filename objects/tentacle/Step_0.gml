/// @desc

if not place_meeting(x, y - space_from_top, parent_collision) {

	attack_cd = max(attack_cd - 1, 0)
	if attack_cd == 0 {
	
		attack_cd = attack_cd_value
	
		instance_create_layer(x, y + 12, "Enemies", tentacle_extra)
	
		y -= 4
	
	}

}
