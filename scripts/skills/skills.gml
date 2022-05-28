// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function useskill(skillid){
	if global.skills[skillid][4]{
		switch(skillid){
			// номер скилла: действие скилла
			case 0:
				instance_create_depth(x, y, -1000, Obj_bullet)
				break
		}
	}
}


function getskillfromid(skillid){
	other.skillid = skillid
	name = global.skills[skillid][0]
	desc = global.skills[skillid][1]
	sprite_index = global.skills[skillid][2]
	cost = global.skills[skillid][3]
	status = global.skills[skillid][4]
}