/// @description 

draw_set_font(f_ru)

// Статы игрока
if instance_exists(Obj_player){
	// Здоровье
	var mhp = Obj_player.maxhp
	var hp = Obj_player.hp
	
	draw_healthbar(50, 50, 50 + 3 * mhp, 70, ( hp / mhp * 100 ), c_black, c_red, c_red, 0, true, true)
	
	// Броня
	var ma = Obj_player.maxarmor
	var a = Obj_player.armor
	
	draw_healthbar(50, 80, 50 + 3 * ma, 100, ( a / ma * 100 ), c_black, c_blue, c_blue, 0, true, true)
}

draw_set_color(c_red)
draw_text(50, 120, string(global.debug))

// Души
draw_set_color(#2C1B31)
draw_text(1200, 700, global.souls)

// Оружие и предметы
if instance_exists(Obj_player){
	draw_set_color(#537072)
	draw_rectangle(0, 768, 260, 670, false)
	
	// Патроны
	blts = [
	Spr_bulletbox_black,
	Spr_bulletbox_blue,
	Spr_bulletbox_green,
	Spr_bulletbox_orange,
	Spr_bulletbox_purple,
	Spr_bulletbox_red,
	Spr_bulletbox_yellow
	]
	var ammo = Obj_player.ammo
	var inLoad = Obj_player.inLoad
	var weapon = Obj_player.weapon
	var curblt = Obj_player.curblt
	
	if curblt == 0{
		draw_sprite(blts[6], 0, 20, 700)
	}
	else{
		draw_sprite(blts[curblt-1], 0, 20, 700)
	}
	
	draw_sprite(blts[curblt], 0, 50, 690)
	
	if curblt == 6{
		draw_sprite(blts[0], 0, 80, 700)
	}
	else{
		draw_sprite(blts[curblt+1], 0, 80, 700)
	}
	
	//Предметы
	its = [
		ico_apteka_24,
		ico_grenade_24,
		ico_med_24,
		ico_med2_24
	]
	
	var curitem = Obj_player.curitem
	if curitem == 0{
		draw_sprite(its[3], 0, 20, 730)
	}
	else{
		draw_sprite(its[curitem-1], 0, 20, 730)
	}
	
	draw_sprite(its[curitem], 0, 50, 720)
	
	if curitem == array_length(its) - 1{
		draw_sprite(its[0], 0, 80, 730)
	}
	else{
		draw_sprite(its[curitem+1], 0, 80, 730)
	}
	
	// Иконка оружия и кол-во патрон
	draw_set_color(#8E9B97)
	switch Obj_player.weapon{
		case 0:
			draw_sprite(ico_rifle_64, 0, 130, 720)
			draw_text(160, 710, string(inLoad[weapon][curblt]) + "|" + string(ammo[weapon][curblt]) )
			break
		case 1:
			draw_sprite(ico_gun_64, 0, 130, 720)
			draw_text(160, 710, string(inLoad[weapon][curblt]) + "|" + string(ammo[weapon][curblt]) )
			break
	}
}
