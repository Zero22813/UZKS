/// @description Insert description here
// You can write your code in this editor

if global.curwin != 0 { instance_destroy(global.curwin) }
instance_create_depth(0, 0, -1, Death_window)