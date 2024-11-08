/// @desc Decide "Golden" Stuff

var _depth = round(global.deepest/32)
var _golden_chance = (power(_depth, 0.75)/500) - 0.12
var _shadow_chance = _golden_chance - 0.21

if random(1) < _shadow_chance {
	
	shadow = true
	hp = hp*160 + 500
	
	damage = 1
	xp_drop = xp_drop*45
	
} else if (random(1) < _golden_chance) {
	
	golden = true
	hp = hp*24 + 50
	
	damage = 1
	xp_drop = xp_drop*7
	
}
