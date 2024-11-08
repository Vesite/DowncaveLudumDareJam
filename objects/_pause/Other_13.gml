/// @desc New weapon Buttons

global.paused = true

text_scale = 2
text_on_screen = "Choose a new weapon!"

var _extra_text = "\n+ Bonus Energy"

//Create buttons
var _rand = irandom_range(0, ds_list_size(list_of_weapons) - 1)
var _array = ds_list_find_value(list_of_weapons, _rand)
var _id = constructor_button_dynamic(GAME_WIDTH*0.33, GAME_HEIGHT*0.5, 100, 100, _array[0] + _extra_text, spawn_new_weapon, _array[1], true,  _array[2], 75)
ds_list_add(button_instance_list, _id)


//Create buttons
var _rand = irandom_range(0, ds_list_size(list_of_weapons) - 1)
var _array = ds_list_find_value(list_of_weapons, _rand)
var _id = constructor_button_dynamic(GAME_WIDTH*0.66, GAME_HEIGHT*0.5, 100, 100, _array[0] + _extra_text, spawn_new_weapon, _array[1], true,  _array[2], 75)
ds_list_add(button_instance_list, _id)
