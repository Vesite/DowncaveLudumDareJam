/// @desc

if P exit
if NP exit

if following {

	//Add randomness
	increase += 1
	var _dir = sin(increase/100 + random_number)*360
	hsp += lengthdir_x(0.015, _dir)
	vsp += lengthdir_y(0.015, _dir)
	
}

// Inherit the parent event
event_inherited()
