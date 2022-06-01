/// @description Insert description here
// You can write your code in this editor

if distance_to_object(Obj_player) <= 50{
	
	if keyboard_check_released(ord("F")){
		
		if !Obj_player.in_menu {
			Obj_player.in_menu = true
			Twin = instance_create_depth(0, 0, -1, Tutor_window)
		}
		else{
			Obj_player.in_menu = false
			instance_destroy(Twin)
		}
		
	}
	
}