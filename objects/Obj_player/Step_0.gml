//------------Движение------------

hspd = ( keyboard_check(ord("D")) - keyboard_check(ord("A")) ) * mspd
vspd = ( keyboard_check(ord("S")) - keyboard_check(ord("W")) ) * mspd

var door = instance_nearest(x, y, Obj_door)

//----------Столкновения----------
if door.status == "close"{
	if distance_to_object(door) < 10{
		if door.rt == 0{
			if y - door.y <= 92 && y - door.y > 20{ y += 10 }
			else if y - door.y <= 20 && y - door.y > -30{ y -= 10 }
		}
		else{
			if x - door.x <= 92 && x - door.x > 20{ x += 10 }
			else if x - door.x <= 20 && x - door.x > -30{ x -= 10 }
		}
	}
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

if global.curwin == 0{
	if keyboard_check(ord(1)){ weapon = 0 }
	else if keyboard_check(ord(2)){ weapon = 1 }

	if ( weapon = 0 && mouse_check_button(mb_left) && inLoad[weapon][curblt] > 0 && atkcount >= atkspd){
		instance_create_depth(x, y, -1000, blts[curblt])
		inLoad[weapon][curblt] -= 1
		atkcount = 0
	}
	else if ( weapon = 1 && mouse_check_button_released(mb_left) && inLoad[weapon][curblt] > 0){
		instance_create_depth(x, y, -1000, blts[curblt])
		inLoad[weapon][curblt] -= 1
	}
}


//------------Перезарядка------------

if keyboard_check_released(ord("R")){
	tmp = (cup[weapon] - inLoad[weapon][curblt])
	if ammo[weapon][curblt] >= tmp {
		ammo[weapon][curblt] -= tmp
		inLoad[weapon][curblt] = cup[weapon]
	}
	else{
		inLoad[weapon][curblt] += ammo[weapon][curblt]
		ammo[weapon][curblt] = 0
	}
	/*
	switch weapon{
		case 0:
			tmp = (30 - inLoad[weapon][curblt])
			if ammo[weapon][curblt] >= tmp {
				ammo[weapon][curblt] -= tmp
				inLoad[weapon][curblt] = 30
			}
			else{
				inLoad[weapon][curblt] += ammo[weapon][curblt]
				ammo[weapon][curblt] = 0
			}
		case 1:
			tmp = (7 - inLoad[weapon][curblt])
			if ammo[weapon][curblt] >= tmp {
				ammo[weapon][curblt] -= tmp
				inLoad[weapon][curblt] = 7
			}
			else{
				inLoad[weapon][curblt] += ammo[weapon][curblt]
				ammo[weapon][curblt] = 0
			}
	}
	*/
}

if keyboard_check( vk_shift ){
//------------Сменя активного предмета------------
	if keyboard_check_released( ord("E") ){
		if curitem < 3 { curitem += 1 }
		else { curitem = 0 }
	}
	else if keyboard_check_released( ord("Q") ){
		if curitem > 0 { curitem -= 1 }
		else { curitem = 3 }
	}
}
else{
//------------Сменя вида пуль------------
	if keyboard_check_released( ord("E") ){
		if curblt < 6 { curblt += 1 }
		else { curblt = 0 }
	}
	else if keyboard_check_released( ord("Q") ){
		if curblt > 0 { curblt -= 1 }
		else { curblt = 6 }
	}
}

//------------Окно навыков------------
if keyboard_check_released( ord("C") ){
	if global.curwin == 0{
		global.curwin = instance_create_depth(0, 0, -1, Skill_window)
	}
	else{
		instance_destroy(global.curwin)
	}
}

//------------Окно инвентаря------------
if keyboard_check_released( ord("I") ){
	if global.curwin == 0{
		global.curwin = instance_create_depth(0, 0, -1, Inv_window)
	}
	else{
		instance_destroy(global.curwin)
	}
}

//------------Применение предметов------------
if keyboard_check_released( ord("V") ) && global.items[curitem][4] > 0{
	if global.curwin == 0{
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