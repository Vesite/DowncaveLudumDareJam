/// @desc

//mouse_left_clicked = mouse_check_button_pressed(mb_left)
mouse_any_clicked = mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
mouse_any_hold = mouse_check_button(mb_left) or mouse_check_button(mb_right)

left_hold = keyboard_check(vk_left) or keyboard_check(ord("A"))
right_hold = keyboard_check(vk_right) or keyboard_check(ord("D"))
//up_hold = keyboard_check(vk_up) or keyboard_check(ord("W"))
//down_hold = keyboard_check(vk_down) or keyboard_check(ord("S"))

left_clicked = keyboard_check_pressed(vk_left) or keyboard_check(ord("A"))
right_clicked = keyboard_check_pressed(vk_right) or keyboard_check(ord("D"))
//up_clicked = keyboard_check_pressed(vk_up)
//down_clicked = keyboard_check_pressed(vk_down)


action_1_clicked = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
action_1_hold = keyboard_check(vk_up) or keyboard_check(ord("W"))
//action_2_clicked = keyboard_check_pressed(ord("X"))
//action_2_hold = keyboard_check(ord("X"))

