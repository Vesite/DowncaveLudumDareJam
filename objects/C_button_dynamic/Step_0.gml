/// @desc

if fade_in_time > 0 { exit }

//Logic
if (draw_in_gui == true) or (draw_in_gui == false and not P) {

	//Logic for clicking and hovering the button
	if draw_in_gui 
		var check = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - width/2, y - height/2, x + width/2, y + height/2)	
	else
		var check = point_in_rectangle(mouse_x, mouse_y, x - width/2, y - height/2, x + width/2, y + height/2)
	
	logic_button_mouse(check, is_inside, ind_var)

	if is_inside[0] {
	
		if _input_manager.mouse_any_clicked {
			
			//Click
			event_user(0)
			ind_var[0] = 2
		}
		
		if (mouse_check_button_released(mb_left) or mouse_check_button_released(mb_right))
			ind_var[0] = 1

	}

	image_index = ind_var[0]

}
