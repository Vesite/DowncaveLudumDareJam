/// @desc

event_inherited()

var _check_limit = CHUNK_HEIGHT*32

// Snap it to the bottom!
while (not place_meeting(x, y + 1, parent_collision)) {
	
	y += 1
	_check_limit = max(_check_limit - 1, 0)
	
	if _check_limit == 0 {
		instance_destroy()
		exit
	}
	
}

if place_meeting(x, y, tentacle) { instance_destroy() }

