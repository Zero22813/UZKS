/// @description Insert description here
// You can write your code in this editor

if instance_exists(Obj_player) && distance_to_object(Obj_player) <= 600{
	mp_potential_step(Obj_player.x, Obj_player.y, spd, false)
}
else if distance_to_object(spawn) >= 200{
	mp_potential_step(spawn.x, spawn.y, spd, false)
}


if hp <= 0 { instance_destroy() }