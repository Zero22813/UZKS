/// @description дамаг
// You can write your code in this editor

if !in_dmg {
	if armor >= exdmg{
		armor -= exdmg
	}
	else if armor > 0{
		armor -= exdmg
		hp -= armor
		armor = 0
	}
	else{
		hp -= exdmg
	}
	
	in_dmg = true
	sprite_index = Spr_player_damaged
}