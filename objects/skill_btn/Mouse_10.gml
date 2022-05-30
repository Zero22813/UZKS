/// @description 

Skill_window.sname = name
if type{
	Skill_window.info = desc +
	"\ncost: " + string(cost) +
	"\ntype: active" +
	"\nenergy: " + string(encost) +
	"\ncooldown: " + string(cooldown)
}
else{
	Skill_window.info = desc +
	"\n\ncost: " + string(cost) +
	"\ntype: passive"
}