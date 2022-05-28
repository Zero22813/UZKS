/// @description Insert description here
// You can write your code in this editor

if distance_to_object(Obj_player) <= 50{
	
	if keyboard_check_released(ord("F")){
		
		if status = "close"{
			for (i=0; i < array_length(Obj_player.keys); i+=1){
				if ukey == Obj_player.keys[i]{
					status = "open"
					sprite_index = opimg
					mask_index = opimg
					solid = false
					break
				}
			}
		}
		else{
			status = "close"
			sprite_index = climg
			mask_index = climg
			solid = true
		}
	}
	
}