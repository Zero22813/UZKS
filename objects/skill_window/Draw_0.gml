/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
draw_set_font(f_ru)
draw_text(x + 600, y + 20,
"sp: " + string(global.sp) + " xp: " + string(global.xp) + "/" + string(global.maxxp))
draw_text(x + 850, y + 70, sname)
draw_text(x + 830, y + 110, info)