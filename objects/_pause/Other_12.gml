/// @desc Game Over Buttons

global.paused = true

text_scale = 2
text_on_screen = "Game Over!"
if (random(1) <= 0.01) { text_on_screen = "Gamle Ovner!" }

//Create buttons
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.5, 120, 70, "Restart", func_restart, undefined, true, s_nothing, 150)
ds_list_add(button_instance_list, _id)

