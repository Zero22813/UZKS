/// @description Insert description here
// You can write your code in this editor

draw_set_color(#CC06AA)
draw_text(40, 60, "fps: " + string(fps))
draw_text(40, 75, "score: " + string(global.score))


if instance_exists(Obj_player){
	draw_text(40, 90, "weapon: " + string(Obj_player.weapon))
	switch Obj_player.weapon{
		case "rifle":
			draw_sprite(ico_rifle_64, 0, 64, 700)
			draw_text(100, 690, string(Obj_player.rifInLoad) + "|" + string(Obj_player.rifAmmo) )
			break
		case "gun":
			draw_sprite(ico_gun_64, 0, 64, 700)
			draw_text(100, 690, string(Obj_player.gunInLoad) + "|" + string(Obj_player.gunAmmo) )
			break
	}
}
