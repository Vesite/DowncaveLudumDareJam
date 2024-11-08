/// @desc Info

global.paused = true

text_scale = 1
text_on_screen = "Downcave, by Iron Juice (Daniel Seeberg)\ncreated for Ludum Dare 48\nTheme: Deeper and Deeper"

var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.55, 80, 30, "Itch.io Page", url_open, "https://iron-juice.itch.io/downcave", true, s_nothing, 0)
ds_list_add(button_instance_list, _id)

var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.7, 80, 30, "Ludum Dare\nPage", url_open, "https://ldjam.com/events/ludum-dare/48/downcave", true, s_nothing, 0)
ds_list_add(button_instance_list, _id)

//Return
var _id = constructor_button_dynamic(GAME_WIDTH*0.5, GAME_HEIGHT*0.85, 80, 30, "Continue", func_exit_pasue, undefined, true, s_nothing, 0)
ds_list_add(button_instance_list, _id)
