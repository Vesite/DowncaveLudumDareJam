

enum DIRECTION {
	
	LEFT,
	RIGHT,
	DOWN,
	UP
	
}

#macro SINGLETON_OBJ_DEPTH -1000

#macro P (global.paused = true)
#macro NP (not instance_exists(player))

#macro WORLD_GEN_ACTIVE false
#macro world_gen:WORLD_GEN_ACTIVE true
#macro DEV false
#macro dev:DEV true


//I will force the game into this "quality" option (surface size i guess) (and logic area size in pixels)
#macro GAME_WIDTH 480
#macro GAME_HEIGHT 270

#macro world_gen:GAME_WIDTH 3840
#macro world_gen:GAME_HEIGHT 2160

#macro CHUNK_WIDTH 15
#macro CHUNK_HEIGHT 5


#macro PLAYER_GRAVITY 0.24


