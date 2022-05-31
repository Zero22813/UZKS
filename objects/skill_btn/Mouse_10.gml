/// @description 

var st = global.skills[skillid][4] ? "\n\nИзучено" : "\n\nНе изучено"

Skill_window.sname = name
if type{
	Skill_window.info = desc +
	"\ncost: " + string(cost) +
	"\ntype: active" +
	"\nenergy: " + string(encost) +
	"\ncooldown: " + string(cooldown) + 
	st
}
else{
	Skill_window.info = desc +
	"\n\ncost: " + string(cost) +
	"\ntype: passive" + 
	st
}