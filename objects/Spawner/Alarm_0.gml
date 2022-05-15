/// @description Insert description here
// You can write your code in this editor

if encount < 5 && distance_to_object(Obj_player) > 150 {
	instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), 0, Obj_enemy)
	encount += 1
}
alarm[0] = irandom_range(60, 600)