/// @desc Perk Choose Thing

global.paused = true

text_scale = 2
text_on_screen = "Level Up!\nChoose a Bonus!"

// Create buttons
var _rand = irandom_range(0, ds_list_size(list_of_upgrades) - 1)
var _array = ds_list_find_value(list_of_upgrades, _rand)
var _id = constructor_button_dynamic(GAME_WIDTH*0.25, GAME_HEIGHT*0.5, 100, 100, _array[0], _array[1], undefined, true, _array[2], 75)
ds_list_add(button_instance_list, _id)

var _rand = irandom_range(0, ds_list_size(list_of_upgrades) - 1)
var _array = ds_list_find_value(list_of_upgrades, _rand)
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.5, 100, 100, _array[0], _array[1], undefined, true, _array[2], 75)
ds_list_add(button_instance_list, _id)

var _rand = irandom_range(0, ds_list_size(list_of_upgrades) - 1)
var _array = ds_list_find_value(list_of_upgrades, _rand)
var _id = constructor_button_dynamic(GAME_WIDTH*0.75, GAME_HEIGHT*0.5, 100, 100, _array[0], _array[1], undefined, true, _array[2], 75)
ds_list_add(button_instance_list, _id)
