// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function xpadd(xp){
	global.xp += xp
	if global.xp >= global.maxxp{
		global.sp += 1
		global.xp -= global.maxxp
	}
}

function learnskill(skillid){
	if !global.skills[skillid][4] && global.sp >= global.skills[skillid][3]{
		global.sp -= global.skills[skillid][3]
		global.skills[skillid][4] = true
		if !global.skills[skillid][6]{
			switch(skillid){
				// Пассивки id:действие
				case 2:
					Obj_player.dmg += 15
					break
			}
		}
	}
}

function useskill(skillid){
	if global.skills[skillid][4]{
		switch(skillid){
			// Активки id:действие
			case 0:
				instance_create_depth(x, y, -1000, Obj_bullet_black)
				break
			case 1:
				instance_create_depth(x, y, -1000, Obj_grenade)
				break
		}
	}
}


function getskillfromid(skillid){
	self.skillid = skillid
	name = global.skills[skillid][0]
	desc = global.skills[skillid][1]
	sprite_index = global.skills[skillid][2]
	cost = global.skills[skillid][3]
	status = global.skills[skillid][4]
	cooldown = global.skills[skillid][5]
	type = global.skills[skillid][6]
}