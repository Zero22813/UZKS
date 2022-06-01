/// @description Insert description here
// You can write your code in this editor

if distance_to_object(Obj_player) <= 50{
	
	if keyboard_check_released(ord("E")){
		
		if !in_shop {
			Obj_player.in_menu = true
			in_shop = true
			Shwin = instance_create_depth(0, 0, -1, Shop_window)
		}
		else{
			Obj_player.in_menu = false
			in_shop = false
			instance_destroy(Shwin)
		}
		
	}
	
}