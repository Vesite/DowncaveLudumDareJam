/// @desc

if P exit

if instance_exists(player) and not WORLD_GEN_ACTIVE {
	
	var _chunk_height = (32*CHUNK_HEIGHT)
	
	if player.y >= (_chunk_height*depth_var - 32) {
		
		event_user(1)
		
	}
	
	#region Spawn Constant enemies
	
		if depth_var > 3 {
			
			//Spawn Ghosts
			if player.player_biome_in_currently == BIOME.ROCK {
		
				//Spawn enemies
				var _chance = (0.02 + depth_var/700)
				_chance = min(_chance, 0.2)
				if random(1) < _chance {
		
					//show_debug_message("Chance to spawn: " + string(_chance))
		
					//Create an enemy on left or right
					var _x = choose(random_range(-50, -16), random_range(GAME_WIDTH + 16, GAME_WIDTH + 50))
					var _y = random_range(player.y + 800, player.y - 128)
					instance_create_layer(_x, _y, "Enemies", ghast_1)
	
				}
			}
			
			//Spawn Clouds
			if player.player_biome_in_currently == BIOME.CRYSTAL {
			
				//Spawn enemies
				var _chance = (0.008 + depth_var/2500)
				_chance = min(_chance, 0.25)
				if random(1) < _chance {
		
					//show_debug_message("Chance to spawn: " + string(_chance))
		
					//Create an enemy on left or right
					var _x = random_range(-40, GAME_WIDTH + 40)
					var _y = random_range(player.y - GAME_HEIGHT*0.8, player.y - GAME_HEIGHT*1.2)
					instance_create_layer(_x, _y, "Enemies", cloud)
		
				}
			
			}
			
		
		}
	
	#endregion

}