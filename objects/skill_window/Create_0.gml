/// @description Insert description here
// You can write your code in this editor


btns = []
depth = -1

sname = "name"
info = "none"

for ( i = 0; i < 3; i++ ){
	array_push(btns, instance_create_depth(200 + 100*i, 300, -2, Skill_btn ))
	with(btns[i]) {
		getskillfromid(other.i)
		xdif = 300 + 100 * other.i
		ydif = 250
	}
}