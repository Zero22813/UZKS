/// @description Insert description here
// You can write your code in this editor


btns = []
depth = -1

sname = "name"
info = "none"

// Кнопки скиллов
for ( i = 0; i < array_length(global.skills); i++ ){
	array_push(btns, instance_create_depth(200 + 100*i, 300, -2, Skill_btn ))
	with(btns[i]) {
		getskillfromid(other.i)
		xdif = 180 + 100 * (other.i % 8)
		ydif = 220 + 100 * (other.i / 8)
	}
}