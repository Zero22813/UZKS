/// @description дамаг
// You can write your code in this editor

if !in_dmg {
	hp -= 1
	in_dmg = true
	sprite_index = Spr_player_damaged
}