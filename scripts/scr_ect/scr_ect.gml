

function calculate_regen_total(_max, _flat_regen) {
	
	return _max/(60*10) + _flat_regen
	
}


function play_sound_ij(_sound, _p1, _p2) {
	
	audio_sound_pitch(_sound, random_range(_p1, _p2))
	audio_play_sound(_sound, 5, false)
	
}

/*
Changes the variables that we use while hovering over buttons
Used with multiple buttons
Takes in a "check" variable (boolean)
Takes in two arrays that only has a value at arr[0]
Changes the values in the arrays (pointer)
*/	
function logic_button_mouse(_check, _arr_is_inside, _arr_index) {

	if _arr_is_inside[0] == false {
		if _check {
			
			_arr_is_inside[@ 0] = true	
			_arr_index[@ 0] = 1
			
			//Play sound
			play_sound_ij(tap_sound, 0.9, 1.1)
			
		}
	}
	else {
		if not _check {
			_arr_is_inside[@ 0] = false
			_arr_index[@ 0] = 0
		}
	}
}

function assign_singleton() {

	//Make the objet a singleton
	if (instance_number(object_index) > 1)
	{
		instance_destroy()
		return false
	}

	persistent = true
	return true

}

function draw_highlight(_x1, _y1, _x2, _y2, _delta) {
	
	var _spr_width = sprite_get_width(s_highlight)
	
	//Left Top
	draw_sprite(s_highlight, 0, _x1 - _delta, _y1 - _delta)
	//Right Top
	draw_sprite(s_highlight, 1, _x2 + _delta - _spr_width, _y1 - _delta)
	//Left Bot
	draw_sprite(s_highlight, 2, _x1 - _delta, _y2 + _delta - _spr_width)
	//Right Bot
	draw_sprite(s_highlight, 3, _x2 + _delta - _spr_width, _y2 + _delta - _spr_width)
	
	
}

function approach(argument0, argument1, argument2) {

	/// Approach(a, b, amount)
	// Moves "a" towards "b" by "amount" and returns the result
	// Nice bcause it will not overshoot "b", and works in both directions
	// Examples:
	//      speed = Approach(speed, max_speed, acceleration);
	//      hp = Approach(hp, 0, damage_amount);
	//      hp = Approach(hp, max_hp, heal_amount);
	//      x = Approach(x, target_x, move_speed);
	//      y = Approach(y, target_y, move_speed);
 
	if (argument0 < argument1)
	{
	    argument0 += argument2;
	    if (argument0 > argument1)
	        return argument1;
	}
	else
	{
	    argument0 -= argument2;
	    if (argument0 < argument1)
	        return argument1;
	}
	return argument0;

}









