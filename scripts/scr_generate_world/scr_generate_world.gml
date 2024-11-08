

/*
Takes a string with 15 symbols and makes a line in the grid
*/
function add_grid_chunk_line(_grid, _y, _string) {
	
	//Add 15 elements to the grid at y-position "_y"
	for (var _i = 0; _i < 15; _i++) {
		//show_message(_i)
	    ds_grid_add(_grid, _i, _y, string_char_at(_string, _i + 1))
	}

}


/*
Big function to generate a chunk from some information
*/
function generate_chunk(_depth_var, _y_start, _chunk_grid, _have_weapon, _biome, _x_start) {
	
	#region Decide variables based on biome
		
		var _enemies_above_list = ds_list_create()
		var _enemy_above_mult = 1
		var _enemies_below_list = ds_list_create()
		var _enemy_below_mult = 1
		
		switch (_biome) {
		    case BIOME.ROCK:
		        var _bg_sprite = s_bg_rock
				var _wall_sprite = s_rock_bricks
				ds_list_add(_enemies_below_list, skull_1)
				_enemy_below_mult = 1.1
		    break;
		    case BIOME.SAND:
		        var _bg_sprite = s_bg_sandstone
				var _wall_sprite = s_sandstone
				ds_list_add(_enemies_below_list, tentacle)
				ds_list_add(_enemies_below_list, tentacle)
				ds_list_add(_enemies_below_list, tentacle)
				ds_list_add(_enemies_below_list, mummy)
				_enemy_below_mult = 3
				ds_list_add(_enemies_above_list, mummy)
				_enemy_above_mult = 1.1
		    break;
			case BIOME.CRYSTAL:
		        var _bg_sprite = s_bg_crystal
				var _wall_sprite = s_crystal
				ds_list_add(_enemies_below_list, sentry)
				ds_list_add(_enemies_below_list, slime)
				ds_list_add(_enemies_below_list, slime)
				_enemy_below_mult = 1.2
		    break;
			case BIOME.FLESH:
		        var _bg_sprite = s_bg_flesh
				var _wall_sprite = s_wall_flesh
				ds_list_add(_enemies_below_list, ball)
				ds_list_add(_enemies_below_list, ball)
				ds_list_add(_enemies_below_list, chest)
				_enemy_below_mult = 1.4
		    break;
			case BIOME.MARBLE:
		        var _bg_sprite = s_bg_marble
				var _wall_sprite = s_wall_marble
		    break;
			case BIOME.HELL:
		        var _bg_sprite = s_bg_hell
				var _wall_sprite = s_wall_hell
		    break;
			case BIOME.SNAKE:
		        var _bg_sprite = s_bg_snake
				var _wall_sprite = s_wall_snake
		    break;
		}
		
	#endregion
	
	
	var _block_list = ds_list_create()
	
	with (instance_create_layer(_x_start, _y_start, "Bg_Inst", bg_big)) { sprite_index = _bg_sprite }
	
	//Loop through the 10-y-layers
	for (var _y = 0; _y < CHUNK_HEIGHT; _y++) {
		
		//Generate a line of blocks
		for (var _x = 0; _x < CHUNK_WIDTH; _x++) {
		    
			var _value_to_id = ds_grid_get(_chunk_grid, _x, _y)
			var _id = noone
			if _value_to_id == "1" { _id = wall }
			if _value_to_id == "0" { _id = noone }
			if _value_to_id == "R" { _id = choose(wall, noone) }
			
			if _id != noone {
				var _block_id = instance_create_layer(_x_start + _x*32, _y_start + _y*32, "Instances", _id)
				_block_id.sprite_index = _wall_sprite
				ds_list_add(_block_list, _block_id)
			}
			
			
		}

	}
	
	#region Generate a weapon thing on a random block
	
		if _have_weapon {
		
			var _r_block = ds_list_find_value(_block_list, irandom_range(0, ds_list_size(_block_list) - 1))
		
			//While there is no free space above the random block we choose a new one!
			while (collision_point(_r_block.x + 16, _r_block.y - 16, parent_collision, false, true) != noone) {
			
				var _r_block = ds_list_find_value(_block_list, irandom_range(0, ds_list_size(_block_list) - 1))

			}
			
			instance_create_layer(_r_block.x, _r_block.y - 32, "Instances", weapon_pickup)
		
		}
	
	#endregion
	
	
	
	#region Spawn enemies
	
		//var _max = 2 + ((_y_start)/(round((32*CHUNK_HEIGHT))*3)) //The higher this number is the more enemies
		var _max_2 = round(4 + _depth_var/2.5 + 0.1*power(_depth_var, 1.3) + 0.02*power(_depth_var, 1.7)) //The higher this number is the more enemies
		var _enemy_amount = irandom_range(0, _max_2)
		_enemy_amount = max(0, _enemy_amount)
		//show_debug_message("Enemies Tried to Spawn 1: 0 - " + string(_max))
		//show_debug_message("Enemies Tried to Spawn 2: 0 - " + string(_max_2))
		
		// Spawn above
		if (ds_list_size(_enemies_above_list) > 0) and (_depth_var > 1) {
			for (var _i = 0; _i < (round(_enemy_amount*_enemy_above_mult)); _i++) {
		
			    var _x = _x_start + random_range(0, (32*CHUNK_WIDTH))
				var _y = random_range(_y_start - (32*CHUNK_HEIGHT)*4, _y_start - (32*CHUNK_HEIGHT)*4 + (32*CHUNK_HEIGHT) - 16)
		
				var _indx = irandom_range(0, ds_list_size(_enemies_above_list) - 1)
				var _enemy = ds_list_find_value(_enemies_above_list, _indx)
				var _id = instance_create_layer(_x, _y, "Enemies", _enemy)
		
				//Destroy the instance if they spawn in a wall
				// (spawning code for the enemy)
				with (_id) { event_user(1) }
		
			}
		}
	
		//Spawn enemies below
		if (ds_list_size(_enemies_below_list) > 0) {
			for (var _i = 0; _i < (round(_enemy_amount*_enemy_below_mult)); _i++) {
		
			    var _x = _x_start + random_range(0, (32*CHUNK_WIDTH))
				var _y = _y_start + random_range(8, (32*CHUNK_HEIGHT) - 8)
		
				var _indx = irandom_range(0, ds_list_size(_enemies_below_list) - 1)
				var _enemy = ds_list_find_value(_enemies_below_list, _indx)
				var _id = instance_create_layer(_x, _y, "Enemies", _enemy)
		
				//Destroy the instance if they spawn in a wall
				// (spawning code for the enemy)
				with (_id) { event_user(1) }
		
			}
		}
	
	#endregion
	
	//Unoptimized, clear all lists
	ds_list_destroy(_block_list)
	ds_list_destroy(_enemies_above_list)
	ds_list_destroy(_enemies_below_list)
	
}





