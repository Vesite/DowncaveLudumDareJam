/// @desc

//Make the object a Singleton
if (assign_singleton() == false)	exit


depth_var = 1
chunks_until_weapon = choose(3, 4, 4, 5)
chunks_until_biome_change = choose(7, 7, 8, 8, 9, 10, 11)

#macro RANDOM_BIOME (choose(BIOME.SAND, BIOME.ROCK, BIOME.CRYSTAL, BIOME.FLESH, BIOME.MARBLE, BIOME.HELL, BIOME.SNAKE))
#macro START_BIOME (choose(BIOME.SAND))

biome = START_BIOME
enum BIOME {
	
	ROCK,
	SAND,
	CRYSTAL,
	FLESH,
	MARBLE,
	HELL,
	SNAKE
	
}
previous_biome = biome


x_start = 0


/*
General Rules:
Have a wall at either (2, 3, 4) at the top and bottom ?
*/

#region Chunks Rock

chunk_list_rock = ds_list_create()

chunk_1 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_1, 0, "111000010000111")
add_grid_chunk_line(chunk_1, 1, "11R000R11100111")
add_grid_chunk_line(chunk_1, 2, "11R000011001111")
add_grid_chunk_line(chunk_1, 3, "11000000000R111")
add_grid_chunk_line(chunk_1, 4, "110000000000111")
ds_list_add(chunk_list_rock, chunk_1)

chunk_2 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_2, 0, "111000000000111")
add_grid_chunk_line(chunk_2, 1, "111111R00000111")
add_grid_chunk_line(chunk_2, 2, "111000001100111")
add_grid_chunk_line(chunk_2, 3, "11000R111000111")
add_grid_chunk_line(chunk_2, 4, "110000000000111")
ds_list_add(chunk_list_rock, chunk_2)

chunk_3 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_3, 0, "11R00R000000111")
add_grid_chunk_line(chunk_3, 1, "100011000R11111")
add_grid_chunk_line(chunk_3, 2, "1R000000R111111")
add_grid_chunk_line(chunk_3, 3, "11R000000011111")
add_grid_chunk_line(chunk_3, 4, "11100RR0000R111")
ds_list_add(chunk_list_rock, chunk_3)

chunk_4 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_4, 0, "110001000001111")
add_grid_chunk_line(chunk_4, 1, "111R00000011111")
add_grid_chunk_line(chunk_4, 2, "111000R11001111")
add_grid_chunk_line(chunk_4, 3, "110000010000111")
add_grid_chunk_line(chunk_4, 4, "111000000000111")
ds_list_add(chunk_list_rock, chunk_4)

chunk_5 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_5, 0, "111001100001111")
add_grid_chunk_line(chunk_5, 1, "110000000000011")
add_grid_chunk_line(chunk_5, 2, "11R00R111R00001")
add_grid_chunk_line(chunk_5, 3, "111111110090011")
add_grid_chunk_line(chunk_5, 4, "111R00000000111")
ds_list_add(chunk_list_rock, chunk_5)

chunk_6 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_6, 0, "11000000R000111")
add_grid_chunk_line(chunk_6, 1, "1101000R1000111")
add_grid_chunk_line(chunk_6, 2, "10000R111101111")
add_grid_chunk_line(chunk_6, 3, "11100R111R00011")
add_grid_chunk_line(chunk_6, 4, "11110001R000111")
ds_list_add(chunk_list_rock, chunk_6)

#endregion

#region Chunks Sand

chunk_list_sand = ds_list_create()

var _chunk_1 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_1, 0, "111100000000111")
add_grid_chunk_line(_chunk_1, 1, "111110000001111")
add_grid_chunk_line(_chunk_1, 2, "111111000011111")
add_grid_chunk_line(_chunk_1, 3, "111111100000R11")
add_grid_chunk_line(_chunk_1, 4, "11RR00000100111")
ds_list_add(chunk_list_sand, _chunk_1)

var _chunk_2 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_2, 0, "111000000000111")
add_grid_chunk_line(_chunk_2, 1, "111111R0000R111")
add_grid_chunk_line(_chunk_2, 2, "11111000000R111")
add_grid_chunk_line(_chunk_2, 3, "11110000000R111")
add_grid_chunk_line(_chunk_2, 4, "11100R11R000111")
ds_list_add(chunk_list_sand, _chunk_2)

var _chunk_3 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_3, 0, "11R00000R000111")
add_grid_chunk_line(_chunk_3, 1, "11R000011100R11")
add_grid_chunk_line(_chunk_3, 2, "110000111110011")
add_grid_chunk_line(_chunk_3, 3, "110001111111011")
add_grid_chunk_line(_chunk_3, 4, "11R000R1R000011")
ds_list_add(chunk_list_sand, _chunk_3)

var _chunk_4 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_4, 0, "111000000000R11")
add_grid_chunk_line(_chunk_4, 1, "11001R000000R11")
add_grid_chunk_line(_chunk_4, 2, "110110010010R11")
add_grid_chunk_line(_chunk_4, 3, "11R100R11111R11")
add_grid_chunk_line(_chunk_4, 4, "110000000000011")
ds_list_add(chunk_list_sand, _chunk_4)

#endregion

#region Chunks Crystal

chunk_list_crystal = ds_list_create()

var _chunk_1 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_1, 0, "110000000010R11")
add_grid_chunk_line(_chunk_1, 1, "1R00001000100R1")
add_grid_chunk_line(_chunk_1, 2, "1000001000R0001")
add_grid_chunk_line(_chunk_1, 3, "11R000R00000011")
add_grid_chunk_line(_chunk_1, 4, "110000000000R11")
ds_list_add(chunk_list_crystal, _chunk_1)

var _chunk_2 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_2, 0, "1R00R0000000011")
add_grid_chunk_line(_chunk_2, 1, "1R001000000R0R1")
add_grid_chunk_line(_chunk_2, 2, "10001000R0000R1")
add_grid_chunk_line(_chunk_2, 3, "1R0010001000011")
add_grid_chunk_line(_chunk_2, 4, "1100R000R000R11")
ds_list_add(chunk_list_crystal, _chunk_2)

var _chunk_3 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_3, 0, "1R0000110000R11")
add_grid_chunk_line(_chunk_3, 1, "11R0001100000R1")
add_grid_chunk_line(_chunk_3, 2, "11R000R10000R11")
add_grid_chunk_line(_chunk_3, 3, "1R00R0010000011")
add_grid_chunk_line(_chunk_3, 4, "110000010000R11")
ds_list_add(chunk_list_crystal, _chunk_3)

var _chunk_4 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_4, 0, "1R0001000000111")
add_grid_chunk_line(_chunk_4, 1, "11R001000R0R0R1")
add_grid_chunk_line(_chunk_4, 2, "1000010000010R1")
add_grid_chunk_line(_chunk_4, 3, "1R000R00R000011")
add_grid_chunk_line(_chunk_4, 4, "110000001000R11")
ds_list_add(chunk_list_crystal, _chunk_4)

var _chunk_5 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(_chunk_5, 0, "110000000000011")
add_grid_chunk_line(_chunk_5, 1, "100010000000111")
add_grid_chunk_line(_chunk_5, 2, "100010000R11111")
add_grid_chunk_line(_chunk_5, 3, "1R0010000000111")
add_grid_chunk_line(_chunk_5, 4, "1100R0000000011")
ds_list_add(chunk_list_crystal, _chunk_5)



#endregion

#region Chunks Flesh

chunk_list_flesh = ds_list_create()

chunk_1 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_1, 0, "1110000R0000R11")
add_grid_chunk_line(chunk_1, 1, "11R000R11100R11")
add_grid_chunk_line(chunk_1, 2, "11R00001R00R111")
add_grid_chunk_line(chunk_1, 3, "11R0R00R000R111")
add_grid_chunk_line(chunk_1, 4, "11R000000000R11")
ds_list_add(chunk_list_flesh, chunk_1)

chunk_2 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_2, 0, "11R000000000R11")
add_grid_chunk_line(chunk_2, 1, "111111R00000R11")
add_grid_chunk_line(chunk_2, 2, "11R000001100R11")
add_grid_chunk_line(chunk_2, 3, "11R00R111000R11")
add_grid_chunk_line(chunk_2, 4, "11R000R00000R11")
ds_list_add(chunk_list_flesh, chunk_2)

chunk_3 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_3, 0, "11R000000101111")
add_grid_chunk_line(chunk_3, 1, "111RRRR0000R111")
add_grid_chunk_line(chunk_3, 2, "111111111100R11")
add_grid_chunk_line(chunk_3, 3, "11R0R1111000R11")
add_grid_chunk_line(chunk_3, 4, "11R000110000R11")
ds_list_add(chunk_list_flesh, chunk_3)

chunk_4 = ds_grid_create(CHUNK_WIDTH, CHUNK_HEIGHT)
add_grid_chunk_line(chunk_4, 0, "11R000000R11111")
add_grid_chunk_line(chunk_4, 1, "111R11R0R111111")
add_grid_chunk_line(chunk_4, 2, "111111R01111R11")
add_grid_chunk_line(chunk_4, 3, "11R0R000R1RRR11")
add_grid_chunk_line(chunk_4, 4, "11R0R0000000R11")
ds_list_add(chunk_list_flesh, chunk_4)

#endregion

chunk_list_marble = chunk_list_flesh
chunk_list_hell = chunk_list_rock
chunk_list_snake = chunk_list_rock


previous_chunk = chunk_1



