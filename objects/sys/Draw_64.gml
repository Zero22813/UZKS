/// @description 

// Статы игрока
if instance_exists(Obj_player){
	// Здоровье
	var mhp = Obj_player.maxhp
	var hp = Obj_player.hp
	
	draw_healthbar(50, 50, 200, 70, ( hp / mhp * 100 ), c_black, c_red, c_red, 0, true, true)
	
	// Броня
	var ma = Obj_player.maxarmor
	var a = Obj_player.armor
	
	draw_healthbar(50, 80, 200, 100, ( a / ma * 100 ), c_black, c_blue, c_blue, 0, true, true)
	
	// Энергия
	var me = Obj_player.maxenergy
	var e = Obj_player.energy
	
	draw_healthbar(50, 110, 200, 130, ( e / me * 100 ), c_black, c_green, c_green, 0, true, true)
	
}

// Иконка оружия
if instance_exists(Obj_player){
	draw_set_color(#537072)
	draw_rectangle(0, 768, 150, 700, false)
	
	blts = [
	Spr_bulletbox_black,
	Spr_bulletbox_blue,
	Spr_bulletbox_green,
	Spr_bulletbox_orange,
	Spr_bulletbox_purple,
	Spr_bulletbox_red,
	Spr_bulletbox_yellow
	]
	draw_sprite(blts[Obj_player.curblt], 0, 20, 730)
	
	draw_set_color(#8E9B97)
	switch Obj_player.weapon{
		case "rifle":
			draw_sprite(ico_rifle_64, 0, 60, 730)
			draw_text(90, 720, string(Obj_player.rifInLoad) + "|" + string(Obj_player.rifAmmo) )
			break
		case "gun":
			draw_sprite(ico_gun_64, 0, 60, 730)
			draw_text(90, 720, string(Obj_player.gunInLoad) + "|" + string(Obj_player.gunAmmo) )
			break
	}
}
