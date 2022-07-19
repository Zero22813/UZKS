/// @description Insert description here
// You can write your code in this editor

draw_self()
var door = instance_nearest(x, y, Obj_door)
draw_text(x,y,string(y - door.y))