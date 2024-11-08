/// @desc

// Inherit the parent event
event_inherited()

stuck_direction = choose("Left", "Right")

if stuck_direction == "Left" {
	image_xscale = -1	
} else {
	image_xscale = 1	
}

if place_meeting(x, y, parent_collision) {
	
	instance_destroy()
	exit
	
}

if stuck_direction == "Left" {
	
	var _check_limit = 500
	while (not place_meeting(x - 1, y, parent_collision)) {
	
		x -= 1
		_check_limit = max(_check_limit - 1, 0)
	
		if _check_limit == 0 {
			instance_destroy()
			exit
		}
	
	}
	
} else {
	
	var _check_limit = 500
	while (not place_meeting(x + 1, y, parent_collision)) {
	
		x += 1
		_check_limit = max(_check_limit - 1, 0)
	
		if _check_limit == 0 {
			instance_destroy()
			exit
		}
	}
	
}

mask_index = s_sentry_mask

