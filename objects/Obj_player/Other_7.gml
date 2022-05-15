/// @description выход из дамага
// You can write your code in this editor

if in_dmg {
	in_dmg = false
	sprite_index = Spr_player
	if hp <= 0 { instance_destroy() }
}