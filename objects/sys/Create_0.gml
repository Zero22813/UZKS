/// @description Insert description here
// You can write your code in this editor

depth = -3
global.score = 0

global.sp = 0
global.xp = 0
global.maxxp = 100

// Навыки
global.skills = [
	[ //skill1 id-0
		"free bullet", //name-0
		"shoot free bullet", //desc-1
		Spr_skill1, //ico-2
		1, //cost-3
		false, //status-4 true-owned false-not owned
		2, // cooldown-5 in sec
		true //type-6 true-active false-passive
	],
	[ //skill2 id-1
		"grenade", //name-0
		"throw grenade", //desc-1
		Spr_skill2, //ico-2
		2, //cost-3
		false, //status-4 true-owned false-not owned
		5, // cooldown-5 in sec
		true //type-6 true-active false-passive
	],
	[ //skill3 id-2
		"dmg plus", //name-0
		"dmg +15", //desc-1
		Spr_skill3, //ico-2
		1, //cost-3
		false, //status-4 true-owned false-not owned
		5, // cooldown-5 in sec
		false //type-6 true-active false-passive
	],
]