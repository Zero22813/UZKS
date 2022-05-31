/// @description Insert description here
// You can write your code in this editor

if instance_exists(Obj_enemy_red){
	en = instance_nearest(mouse_x, mouse_y, Obj_enemy_red)

	 if point_distance(en.x, en.y, mouse_x, mouse_y) < 32 {
		 draw_sprite(Spr_cursor_en, -1, mouse_x, mouse_y)
		 }
	 else { draw_sprite(Spr_cursor, -1, mouse_x, mouse_y) }
}
else { draw_sprite(Spr_cursor, -1, mouse_x, mouse_y) }
