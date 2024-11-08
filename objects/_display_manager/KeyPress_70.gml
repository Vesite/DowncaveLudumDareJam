/// @desc Toggle Fullscreen

window_set_fullscreen(not window_get_fullscreen())

if not window_get_fullscreen() {
	
	event_user(0)
	
} else {
	
	surface_resize(application_surface, display_get_width(), display_get_height())	
	
}
