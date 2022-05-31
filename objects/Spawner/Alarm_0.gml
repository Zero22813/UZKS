/// @description Insert description here
// You can write your code in this editor

var curen = enpul[ irandom_range(0, 5) ]

if encount < 5 && distance_to_object(Obj_player) > 200 {
	var en = instance_create_depth(x + irandom_range(-100, 100), y + irandom_range(-100, 100), 0, curen)
	with(en){
		spawn = other.id
	}
	encount += 1
}
alarm[0] = irandom_range(60, 600)