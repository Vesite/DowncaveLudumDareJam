/// @desc Update Window Size

window_set_size(global.view_width*window_scale, global.view_height*window_scale)
surface_resize(application_surface, global.view_width*window_scale, global.view_height*window_scale)
alarm[0] = 1
