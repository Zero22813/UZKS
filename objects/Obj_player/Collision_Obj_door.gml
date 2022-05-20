/// @description uNuSABLES
// You can write your code in this editor

var door = instance_nearest(x, y, Obj_door)
if door.status == "close"{
	if !place_meeting(x + 32, y, Obj_door) { x += 32 }
	else if !place_meeting(x - 32, y, Obj_door) { x -= 32 }
	else if !place_meeting(x, y + 32, Obj_door) { y += 32 }
	else if !place_meeting(x, y - 32, Obj_door) { y -= 32 }
}
