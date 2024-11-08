/// @desc End a pause

global.paused = false

cant_shoot_timer = cant_shoot_timer_value

//Destroy all buttons in "button_instance_list"
for (var _i = 0; _i < ds_list_size(button_instance_list); _i++) {
		
	var _id = ds_list_find_value(button_instance_list, _i)
	instance_destroy(_id)
}
ds_list_clear(button_instance_list)




