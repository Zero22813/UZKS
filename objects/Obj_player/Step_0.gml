//------------Движение------------

hspd = ( keyboard_check(ord("D")) - keyboard_check(ord("A")) ) * mspd
vspd = ( keyboard_check(ord("S")) - keyboard_check(ord("W")) ) * mspd

var door = instance_nearest(x, y, Obj_door)
if door.status == "close"{
	hcol = !place_meeting(x + hspd, y, Obj_wall) * !place_meeting(x + hspd, y, Obj_door)
	vcol = !place_meeting(x, y + vspd, Obj_wall) * !place_meeting(x, y + vspd, Obj_door)
}
else {
	hcol = !place_meeting(x + hspd, y, Obj_wall)
	vcol = !place_meeting(x, y + vspd, Obj_wall)
}

x += hspd * hcol
y += vspd * vcol

if x < 32 { x = 32 }
if y < 32 { y = 32 }
if x > room_width - 32 { x = room_width - 32 }
if y > room_height - 32 { y = room_height - 32 }


//------------Стрельба------------

if !in_menu{
	if keyboard_check(ord(1)){ weapon = "rifle" }
	else if keyboard_check(ord(2)){ weapon = "gun" }

	if ( weapon = "rifle" && mouse_check_button(mb_left) && rifInLoad > 0 && atkspd >= 7){
		instance_create_depth(x, y, -1000, blts[curblt])
		rifInLoad -= 1
		atkspd = 0
	}
	else if ( weapon = "gun" && mouse_check_button_released(mb_left) && gunInLoad > 0){
		instance_create_depth(x, y, -1000, blts[curblt])
		gunInLoad -= 1
	}
}


//------------Перезарядка------------

if keyboard_check_released(ord("R")){
	switch weapon{
		case "rifle":
			tmp = (30 - rifInLoad)
			if rifAmmo >= tmp {
				rifAmmo -= tmp
				rifInLoad = 30
			}
			else{
				rifInLoad += rifAmmo
				rifAmmo = 0
			}
		case "gun":
			tmp = (7 - gunInLoad)
			if gunAmmo >= tmp {
				gunAmmo -= tmp
				gunInLoad = 7
			}
			else{
				gunInLoad += gunAmmo
				gunAmmo = 0
			}
	}
}

//------------Сменя вида пуль------------
if keyboard_check_released( ord("Q") ){
	if curblt < 6{ curblt += 1 }
	else { curblt = 0 }
}

//------------Окно навыков------------
if keyboard_check_released( ord("C") ){
	if !in_menu{
		in_menu = true
		Swin = instance_create_depth(0, 0, -1, Skill_window)
	}
	else{
		in_menu = false
		instance_destroy(Swin)
	}
}

//------------Применение навыков------------
if keyboard_check_released( ord("F") ) && skillid[0] >= 0{
	if !in_menu && cooldown <= 0{
		useskill(skillid)
		cooldown = global.skills[skillid[0]][5] * 60
	}
}
/*
Несколько скиллов через массивы (бинды соображать неохота)
if !in_menu && keyboard_check_released( ord("E") ) && skillid[1] >= 0{
	if cooldown[1] <= 0{
		useskill(skillid[1])
		cooldown[1] = global.skills[skillid[1]][5] * 60
	}
}
*/

//------------trash------------
atkspd += 1
cooldown -= 1