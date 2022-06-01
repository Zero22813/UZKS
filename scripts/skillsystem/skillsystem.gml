// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region Начисление валюты
function soulsadd(souls){
	global.souls += souls
}

#endregion

#region Получение навыка\предмета
function learnskill(skillid){
	if !global.skills[skillid][4] && global.souls >= global.skills[skillid][3]{
		global.souls -= global.skills[skillid][3]
		global.skills[skillid][4] = true
		if !global.skills[skillid][6]{
			switch(skillid){
				// Пассивки id:действие
				///////////////////////Скорострельность//////////////////////////////
				case 0:
					Obj_player.atkspd += 1
					break
				case 1:
					Obj_player.atkspd += 1
					break
				case 2:
					Obj_player.atkspd += 1
					break
				case 3:
					Obj_player.atkspd += 1
					break
				///////////////////////Железная воля//////////////////////////////
				case 4:
					Obj_player.maxarmor += 15
					break
				case 5:
					Obj_player.maxarmor += 35
					break
				case 6:
					Obj_player.maxarmor += 45
					break
				case 7:
					Obj_player.maxarmor += 55
					break
				///////////////////////Повышение здоровья//////////////////////////////
				case 8:
					Obj_player.maxhp += 15
					break
				case 9:
					Obj_player.maxhp += 35
					break
				case 10:
					Obj_player.maxhp += 45
					break
				case 11:
					Obj_player.maxhp += 55
					break
				///////////////////////Стрелок//////////////////////////////
				case 12:
					Obj_player.dmg += 5
					break
				case 13:
					Obj_player.dmg += 5
					break
				case 14:
					Obj_player.dmg += 5
					break
				case 15:
					Obj_player.dmg += 5
					break
				///////////////////////Подрывник//////////////////////////////
				case 16:
					Obj_player.exdmg += 5
					break
				case 17:
					Obj_player.exdmg += 5
					break
				case 18:
					Obj_player.exdmg += 5
					break
				case 19:
					Obj_player.exdmg += 5
					break
				///////////////////////Вампиризм//////////////////////////////
				case 20:
					Obj_player.lifesteal += 0.1
					break
				case 21:
					Obj_player.lifesteal += 0.1
					break
				case 22:
					Obj_player.lifesteal += 0.1
					break
				case 23:
					Obj_player.lifesteal += 0.1
					break
			}
		}
	}
}

function buyitem(itemid){
	if global.souls >= global.items[itemid][3]{
		global.souls -= global.items[itemid][3]
		global.items[itemid][4] += 1
	}
}
#endregion

#region Использование навыка\предмета
/*
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
*/

function useitem(itemid){
	if global.items[itemid][4] > 0{
		switch(itemid){
			case 0:
				global.items[itemid][4] -= 1
				Obj_player.hp += 40
				break
			case 1:
				instance_create_depth(x, y, -1000, Obj_grenade)
				break
		}
	}
}
#endregion

#region Получение навыка\предмета по его ИД
function getskillfromid(skillid){
	self.skillid = skillid
	name = global.skills[skillid][0]
	desc = global.skills[skillid][1]
	sprite_index = global.skills[skillid][2]
	cost = global.skills[skillid][3]
	status = global.skills[skillid][4]
}

function getitemfromid(itemid){
	self.itemid = itemid
	name = global.items[itemid][0]
	desc = global.items[itemid][1]
	sprite_index = global.items[itemid][2]
	cost = global.items[itemid][3]
}
#endregion
