/// @description Insert description here
// You can write your code in this editor

if active{
	if keyboard_check_released( ord("Q") ){
		Obj_player.skillid[0] = skillid
		active = false
	}
	if keyboard_check_released( ord("E") ){
		Obj_player.skillid[1] = skillid
		active = false
	}
}