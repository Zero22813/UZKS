/// @description Insert description here
// You can write your code in this editor

if instance_exists(Obj_player) && distance_to_object(Obj_player) <= 600{
	mp_potential_step(Obj_player.x, Obj_player.y, 3, false)
}

if hp <= 0 { instance_destroy() }

