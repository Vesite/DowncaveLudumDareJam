/// @desc

if P exit
if not instance_exists(player) exit



if y > player.y {
	image_yscale = 1
} else
	image_yscale = -1

attack_cd = max(attack_cd - 1, 0)
if attack_cd == 0 {
	
	attack_cd = attack_cd_value
	
	with (instance_create_layer(x, y, "Projectiles", sentry_bullet)) {

		var _dir = point_direction(x, y, player.x, player.y)
		hsp = sign(lengthdir_x(move_speed, _dir))*move_speed*0.23
		vsp = move_speed*1.3
	
	}
	
}



