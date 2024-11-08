/// @desc

if player_alive_state = PLAYER_ALIVE_STATE.DEAD { exit }

if flash > 0
	shader_set(sh_flash)

flash = max(flash - 1, 0)


if ((invis_frames mod 6) == 0) { draw_self() }
if ((invis_frames mod 6) == 1) { }
if ((invis_frames mod 6) == 2) { }
if ((invis_frames mod 6) == 3) { draw_self() }
if ((invis_frames mod 6) == 4) { draw_self() }
if ((invis_frames mod 6) == 5) { }


shader_reset()
