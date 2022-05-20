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

if x < 0 { x = 0 }
if y < 0 { y = 0 }
if x > room_width { x = room_width }
if y > room_height { y = room_height }


//------------Стрельба------------

if keyboard_check(ord(1)){ weapon = "rifle" }
else if keyboard_check(ord(2)){ weapon = "gun" }

if ( weapon = "rifle" && mouse_check_button(mb_left) && rifInLoad > 0 && atkspd >= 7){
	instance_create_depth(x, y, -1000, Obj_bullet)
	rifInLoad -= 1
	atkspd = 0
}
else if ( weapon = "gun" && mouse_check_button_released(mb_left) && gunInLoad > 0){
	instance_create_depth(x, y, -1000, Obj_bullet)
	gunInLoad -= 1
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


//------------trash------------
atkspd += 1
