/// @desc

event_inherited()

hp = 16
xp_drop = 3

grv = 0.1

slime_mode = choose(SLIME_M.RIGHT, SLIME_M.LEFT)
enum SLIME_M {
	
	LEFT,
	RIGHT
	
}

#macro S_L (slime_mode == SLIME_M.LEFT)
#macro S_R (slime_mode == SLIME_M.RIGHT)

if S_R
	image_angle = 90

if S_L
	image_angle = 270

event_user(2)
