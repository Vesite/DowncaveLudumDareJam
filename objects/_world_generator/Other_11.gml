/// @desc Spawn a new chunk

chunks_until_weapon = max(chunks_until_weapon - 1, 0)
chunks_until_biome_change = max(chunks_until_biome_change - 1, 0)

//Choose a new different biome!
if chunks_until_biome_change == 0 {
	chunks_until_biome_change = choose(6, 7, 7, 8, 8, 9)
			
	biome = RANDOM_BIOME
	while biome == previous_biome {
		biome = RANDOM_BIOME
	}
}
previous_biome = biome
		
#region Decide stuff based on biome
			
	switch (biome) {
		case BIOME.ROCK:
			var _chunk_list = chunk_list_rock 
		break;
		case BIOME.SAND:
			var _chunk_list = chunk_list_sand
		break;
		case BIOME.CRYSTAL:
			var _chunk_list = chunk_list_crystal
		break;
		case BIOME.FLESH:
			var _chunk_list = chunk_list_flesh
		break;
		case BIOME.MARBLE:
			var _chunk_list = chunk_list_marble
		break;
		case BIOME.HELL:
			var _chunk_list = chunk_list_hell
		break;
		case BIOME.SNAKE:
			var _chunk_list = chunk_list_snake
		break;
	}
		
#endregion

//Decide Chunk 
var _indx = irandom_range(0, ds_list_size(_chunk_list) - 1)
var _new_chunk = ds_list_find_value(_chunk_list, _indx)
while _new_chunk == previous_chunk {
	var _indx = irandom_range(0, ds_list_size(_chunk_list) - 1)
	_new_chunk = ds_list_find_value(_chunk_list, _indx)
}
previous_chunk = _new_chunk
		
//Spawn the Weapon-thing
var _have_weapon = false
if chunks_until_weapon == 0 {
	var _have_weapon = true
	chunks_until_weapon = choose(3, 4, 4, 5)
}

var _chunk_height = (32*CHUNK_HEIGHT)
generate_chunk(depth_var, _chunk_height*(depth_var + 1), _new_chunk, _have_weapon, biome, x_start)
		
//show_message("Generate a chunk starting at y=360*(depth_var + 1)")
depth_var += 1
		
//Clean up blocks that are far away
event_user(0)



