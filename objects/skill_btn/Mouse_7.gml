/// @description 

if !global.skills[skillid][4]{
	learnskill(skillid)
}

var st = global.skills[skillid][4] ? "\n\nИзучено" : "\n\nНе изучено"

Skill_window.sname = name
Skill_window.info = desc +
"\n\ncost: " + string(cost) +
"\ntype: passive" + 
st