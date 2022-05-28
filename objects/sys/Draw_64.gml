/// @description Insert description here
// You can write your code in this editor

//hp
if instance_exists(Obj_player){
	for ( i = 1; i <= Obj_player.hp ; i+=1 ){
		draw_sprite(Spr_heart_32, 0 , 40 * i, 20);
	}
}

// Иконка оружия
if instance_exists(Obj_player){
	draw_set_color(#537072)
	draw_rectangle(0, 768, 120, 700, false)
	
	draw_set_color(#8E9B97)
	switch Obj_player.weapon{
		case "rifle":
			draw_sprite(ico_rifle_64, 0, 30, 730)
			draw_text(60, 720, string(Obj_player.rifInLoad) + "|" + string(Obj_player.rifAmmo) )
			break
		case "gun":
			draw_sprite(ico_gun_64, 0, 30, 730)
			draw_text(60, 720, string(Obj_player.gunInLoad) + "|" + string(Obj_player.gunAmmo) )
			break
	}
}
