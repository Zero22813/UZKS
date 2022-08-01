/// @description дамаг
// You can write your code in this editor

if other.dmg > def{
	
	
	
	if !in_dmg{
		if armor >= other.dmg{
			armor -= other.dmg - def
		}
	else if armor > 0{
		armor -= other.dmg - def
		hp -= armor
		armor = 0
	}
	else{
		hp -= other.dmg - def
	}
	
	in_dmg = true
	sprite_index = Spr_player_damaged
	}
	
	
	
}