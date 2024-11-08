/// @desc Pause

global.paused = true

text_scale = 2
text_on_screen = "Paused"

var _shift = 0

//Return
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.35 - _shift, 95, 23, "Continue", func_exit_pasue, undefined, true, s_nothing, 0)
ds_list_add(button_instance_list, _id)

//Assets
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.45 - _shift, 75, 23, "Assets", show_assets, undefined, true, s_nothing, 0)
ds_list_add(button_instance_list, _id)

//Info
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.55 - _shift, 75, 23, "Info", show_info, undefined, true, s_nothing, 0)
ds_list_add(button_instance_list, _id)

//Return
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.65 - _shift, 85, 23, "Restart", func_restart, undefined, true, s_nothing, 0)
ds_list_add(button_instance_list, _id)

//Return
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.75 - _shift, 75, 23, "Exit Game", game_end, undefined, true, s_nothing, 0)
ds_list_add(button_instance_list, _id)
