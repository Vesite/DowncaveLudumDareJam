



function constructor_button_dynamic(_x, _y, _width, _height, _text, _script_variable, _script_argument, _draw_gui, _icon, _fade_in_time) {
	
	var _id = instance_create_layer(_x, _y, "Top", C_button_dynamic)
	
	_id.width = _width
	_id.height = _height
	_id.text = _text 
	_id.script_variable = _script_variable
	_id.script_argument = _script_argument
	_id.draw_in_gui = _draw_gui
	_id.icon = _icon
	_id.fade_in_time = _fade_in_time
	_id.fade_in_time_max = _fade_in_time
	
	return _id
	
}


function constructor_draw_damage(_x, _y, _value, _duration) {
	
	var _id = instance_create_layer(_x, _y, "Top", C_draw_damage)
	
	_id.text = _value
	
	_id.duration_max = _duration
	_id.duration = _duration
	
	return _id

}

/*
Create a line that draws for a little while
*/
function constructor_draw_line_object(_x1, _y1, _x2, _y2, _width, _col1, _col2, _duration_max, _duration) {
	
	var _id = instance_create_layer(_x1, _y1, "Projectiles", C_draw_line_object)
	
	_id.x1 = _x1
	_id.y1 = _y1
	_id.x2 = _x2
	_id.y2 = _y2

	_id.col1 = _col1
	_id.col2 = _col2
	_id.width_line = _width
	
	_id.duration_max = _duration_max
	_id.duration = _duration
	
}


