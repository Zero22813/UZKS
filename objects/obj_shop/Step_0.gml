/// @description Insert description here
// You can write your code in this editor

if distance_to_object(Obj_player) <= 50{
	
	if keyboard_check_released(ord("F")){
		if global.curwin == 0 { global.curwin = instance_create_depth(0, 0, -1, Shop_window) }
		else { instance_destroy(global.curwin) }
	}
	
}
else{
	if instance_exists(Shop_window){ instance_destroy(Shop_window) }
}