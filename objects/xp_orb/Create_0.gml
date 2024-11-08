
//When we spawn this object we give it these variable
// xp_type = fire, ice or hitpoints
// xp_amount = 3, 10 or 50

grv = 0.08

hsp_fric = 0.01

vsp_max = 5

hsp = random_range(1,-1)
vsp = random_range(-0, -2.5)

xp_value = 1

time_remain = irandom_range(270, 295) + (player.xp_orb_duration_extra*60)
