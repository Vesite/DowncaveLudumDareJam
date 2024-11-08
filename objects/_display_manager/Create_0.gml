
//Make the object a Singleton
if (assign_singleton() == false)	exit

#region Find correct viewing variables, then set the first surface size and window size

	aspect_ratio = display_get_width()/display_get_height()

	global.view_height = GAME_HEIGHT
	global.view_width = round(global.view_height*aspect_ratio)
	if(global.view_width & 1) global.view_width++
	if(global.view_height & 1) global.view_height++
	//At this point the variables "view_height" and "view_width" never change (?)
	
	max_window_scale = min(floor(display_get_width()/global.view_width), floor(display_get_height()/global.view_height))
	max_window_scale = max(1, max_window_scale)
	if(global.view_height*max_window_scale == display_get_height())
	    max_window_scale--
    
	window_scale = max_window_scale

	window_set_size(global.view_width*window_scale, global.view_height*window_scale)
	alarm[0] = 1
	
	surface_resize(application_surface, global.view_width*window_scale, global.view_height*window_scale)
	
	display_set_gui_size(global.view_width, global.view_height)
	
	//Start in fullscreen
	window_set_fullscreen(true)
	surface_resize(application_surface, display_get_width(), display_get_height())	
	
#endregion
