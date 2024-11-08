/// @desc Fall until collision

var _check_limit = 70
while (not place_meeting(x, y + 1, tentacle_extra))
and (not place_meeting(x, y + 1, parent_collision)) {
	
	y += 1
	_check_limit = max(_check_limit - 1, 0)
	
	if _check_limit == 0 {
		exit
	}
	
}


