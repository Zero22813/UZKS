/// @description дамаг
// You can write your code in this editor

if !in_dmg {
	if armor >= other.dmg{
		armor -= other.dmg
	}
	else if armor > 0{
		armor -= other.dmg
		hp -= armor
		armor = 0
	}
	else{
		hp -= other.dmg
	}
	
	in_dmg = true
	sprite_index = Spr_player_damaged
}