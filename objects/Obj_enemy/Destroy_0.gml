/// @description Insert description here
// You can write your code in this editor

global.score += 1
spawn.encount -= 1

if global.score % 10 == 0 {
	Obj_player.hp += 1
}

if irandom_range(1,3) == 1{
	instance_create_depth(x, y, 1, Obj_loot)
}