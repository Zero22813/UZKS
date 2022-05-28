/// @description 

if !global.skills[skillid][4]{
	learnskill(skillid)
}

if type{
	if global.skills[skillid][4] && !active{
		active = true
	}
	else if global.skills[skillid][4] && active{
		active = false
	}
}