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
				case 2:
					Obj_player.dmg += 15
					break
			}
		}
	}
}