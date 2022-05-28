/// @description 

Skill_window.sname = name
if type{
	Skill_window.info = desc +
	"\ncost: " + string(cost) +
	"\ntype: active" +
	"\ncooldown: " + string(cooldown)
}
else{
	Skill_window.info = desc +
	"\ncost: " + string(cost) +
	"\ntype: passive"
}