/// @desc

//Make the object a Singleton
if (assign_singleton() == false)	exit


button_instance_list = ds_list_create()

list_of_upgrades = ds_list_create()
//ds_list_add(list_of_upgrades, ["+1 Hp", get_upgrade_hp_1])
ds_list_add(list_of_upgrades, ["+3 Hp", get_upgrade_hp_3, s_icon_hp])
ds_list_add(list_of_upgrades, ["+3 Hp", get_upgrade_hp_3, s_icon_hp])
//ds_list_add(list_of_upgrades, ["+4 Hp", get_upgrade_hp_4])
//ds_list_add(list_of_upgrades, ["+30% Damage", get_upgrade_damage_30])
ds_list_add(list_of_upgrades, ["+25% Damage", get_upgrade_damage_25, s_icon_dmg])
ds_list_add(list_of_upgrades, ["+25% Damage", get_upgrade_damage_25, s_icon_dmg])
//ds_list_add(list_of_upgrades, ["+30% Attack\nSpeed", get_upgrade_as_30])
ds_list_add(list_of_upgrades, ["+25% Attack\nSpeed", get_upgrade_as_25, s_icon_as])
ds_list_add(list_of_upgrades, ["+25% Attack\nSpeed", get_upgrade_as_25, s_icon_as])
//ds_list_add(list_of_upgrades, ["Reduce\nHorizontal\nKnockback", get_reduce_hori_knockback])
ds_list_add(list_of_upgrades, ["+10 Second\nOrb Duration", get_xp_orbs_lasts_longer, s_icon_xp])
ds_list_add(list_of_upgrades, ["Better\nOrb Magnet", get_better_xp_orb_magnet, s_icon_xp_magnet])
//ds_list_add(list_of_upgrades, ["+3 Energy\n from\n Experience\nOrbs", get_bonus_energy_from_orb])
//ds_list_add(list_of_upgrades, ["+1 Jump", get_bonus_jump])
ds_list_add(list_of_upgrades, ["+2 Jumps\n-6 Energy", get_bonus_jump, s_icon_jump])
ds_list_add(list_of_upgrades, ["+50% Damage\n-4 Hp", get_bonus_damage_hp, s_icon_big_dmg])



list_of_weapons = ds_list_create()
ds_list_add(list_of_weapons, ["Basic Gun", gun, s_icon_gun])
ds_list_add(list_of_weapons, ["Triple Gun", triple_gun, s_icon_triple])
ds_list_add(list_of_weapons, ["Shotgun", shotgun, s_icon_shotgun])
ds_list_add(list_of_weapons, ["Lazer", lazer, s_icon_lazer])
ds_list_add(list_of_weapons, ["Flamethrower", flamethrower, s_icon_flamethrower])

text_on_screen = "Paused"
text_scale = 2

cant_shoot_timer_value = 10
cant_shoot_timer = cant_shoot_timer_value

