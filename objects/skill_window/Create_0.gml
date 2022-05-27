/// @description Insert description here
// You can write your code in this editor


btns = []

for ( i = 0; i < 3; i++ ){
	array_push(btns, instance_create_depth(100 + 100*i, 100, 0, Skill_btn ))
	with(btns[i]) { getskillfromid(other.i) }
}