/// @description Insert description here
// You can write your code in this editor

draw_set_color(#CC0605)
draw_text(40, 60, "fps: " + string(fps))
draw_text(40, 75, "score: " + string(global.score))
draw_text(40, 90, "weapon: " + string(Obj_player.weapon))