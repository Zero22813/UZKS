//------------Движение------------

hspd = ( keyboard_check(ord("D")) - keyboard_check(ord("A")) ) * mspd
vspd = ( keyboard_check(ord("S")) - keyboard_check(ord("W")) ) * mspd

var door = instance_nearest(x, y, Obj_door)
if door.status == "close"{
	hcol = !place_meeting(x + hspd, y, Obj_wall) * !place_meeting(x + hspd, y, Obj_water) * !place_meeting(x + hspd, y, Obj_door)
	vcol = !place_meeting(x, y + vspd, Obj_wall) * !place_meeting(x, y + vspd, Obj_water) * !place_meeting(x, y + vspd, Obj_door)
}
else {
	hcol = !place_meeting(x + hspd, y, Obj_wall) * !place_meeting(x + hspd, y, Obj_water)
	vcol = !place_meeting(x, y + vspd, Obj_wall) * !place_meeting(x, y + vspd, Obj_water)
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

	if ( weapon = "rifle" && mouse_check_button(mb_left) && rifInLoad > 0 && atkcount >= atkspd){
		instance_create_depth(x, y, -1000, blts[curblt])
		rifInLoad -= 1
		atkcount = 0
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
if keyboard_check_released( ord("E") ){
	if curblt < 6{ curblt += 1 }
	else { curblt = 0 }
}
else if keyboard_check_released( ord("Q") ){
	if curblt > 0{ curblt -= 1 }
	else { curblt = 6 }
}

//------------Окно навыков------------
if keyboard_check_released( ord("C") ){
	if !in_menu{
		in_menu = true
		Skwin = instance_create_depth(0, 0, -1, Skill_window)
	}
	else{
		in_menu = false
		instance_destroy(Skwin)
	}
}

//------------Окно инвентаря------------
if keyboard_check_released( ord("I") ){
	if !in_menu{
		in_menu = true
		Iwin = instance_create_depth(0, 0, -1, Inv_window)
	}
	else{
		in_menu = false
		instance_destroy(Iwin)
	}
}

//------------Применение предметов------------
if keyboard_check_released( ord("V") ) && global.items[curitem][4] > 0{
	if !in_menu{
		useitem(curitem)
	}
}

if alarm[0] == 0{
	alarm[0] = 120
}

//------------trash------------
atkcount += 1
if hp > maxhp { hp = maxhp }
if armor > maxarmor { armor = maxarmor }