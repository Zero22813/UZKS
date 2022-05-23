/// @description Insert description here
// You can write your code in this editor

if instance_exists(Obj_player){
	for ( i = 1; i <= Obj_player.hp ; i+=1 ){
		draw_sprite(Spr_heart_32, 0 , 40 * i, 20);
	}
}

draw_set_color(#CC0605)
draw_rectangle(40, 60, 170, 125, false)
draw_set_color(#CC06AA)
draw_text(40, 60, "fps: " + string(fps))
draw_text(40, 75, "score: " + string(global.score))


if instance_exists(Obj_player){
	draw_set_color(#CC0605)
	draw_rectangle(0, 768, 120, 710, false)
	
	draw_set_color(#CC06AA)
	draw_text(40, 90, "weapon: " + string(Obj_player.weapon))
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
