/// @description дамаг
// You can write your code in this editor

if !in_dmg and exdmg < def{
	if armor >= exdmg{
		armor -= exdmg - def
	}
	else if armor > 0{
		armor -= exdmg - def
		hp -= armor
		armor = 0
	}
	else{
		hp -= exdmg - def
	}
	
	in_dmg = true
	sprite_index = Spr_player_damaged
}