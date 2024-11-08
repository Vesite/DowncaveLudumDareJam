/// @desc


if time_remain < 80 {
	
	if time_remain < 30 {
		
		if time_remain mod 2 = 0 { }
		if time_remain mod 2 = 1 { draw_self() }
		
	} else {
		
		if time_remain mod 4 = 0 { }
		if time_remain mod 4 = 1 { }
		if time_remain mod 4 = 2 { draw_self() }
		if time_remain mod 4 = 3 { draw_self() }
		
	}
	
} else {
	draw_self()	
}
