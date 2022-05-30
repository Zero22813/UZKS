/// @description Insert description here
// You can write your code in this editor

depth = -3
global.score = 0

global.sp = 0
global.xp = 0
global.maxxp = 100

// Навыки
global.skills = [
	///////////////////////Скорострельность//////////////////////////////
	[ //skill1 id-0
		"Скорострельность", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF1, //ico-2
		1, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-1
		"Скорострельность+", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF2, //ico-2
		5, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-2
		"Скорострельность++", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF3, //ico-2
		8, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-3
		"Скорострельность+++", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF4, //ico-2
		15, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	///////////////////////Железная воля//////////////////////////////
	[ //skill1 id-4
		"Железная воля", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will1, //ico-2
		1, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-5
		"Железная воля+", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will2, //ico-2
		3, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-6
		"Железная воля++", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will3, //ico-2
		5, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-7
		"Железная воля+++", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will4, //ico-2
		10, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	///////////////////////Повышение здоровья//////////////////////////////
	[ //skill1 id-8
		"Повышение здоровья", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH1, //ico-2
		1, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-9
		"Повышение здоровья+", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH2, //ico-2
		4, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-10
		"Повышение здоровья++", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH3, //ico-2
		9, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-11
		"Повышение здоровья+++", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH4, //ico-2
		14, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	///////////////////////Стрелок//////////////////////////////
	[ //skill1 id-12
		"Стрелок", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST1, //ico-2
		1, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-13
		"Стрелок+", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST2, //ico-2
		2, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-14
		"Стрелок++", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST3, //ico-2
		5, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-15
		"Стрелок+++", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST4, //ico-2
		10, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	///////////////////////Подрывник//////////////////////////////
	[ //skill1 id-16
		"Подрывник", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM1, //ico-2
		5, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-17
		"Подрывник+", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM2, //ico-2
		10, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-18
		"Подрывник++", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM3, //ico-2
		15, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-19
		"Подрывник+++", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM4, //ico-2
		20, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	///////////////////////Вампиризм//////////////////////////////
	[ //skill1 id-20
		"Вампиризм", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP1, //ico-2
		3, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-21
		"Вампиризм+", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP2, //ico-2
		7, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-22
		"Вампиризм++", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP3, //ico-2
		12, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
	[ //skill1 id-23
		"Вампиризм+++", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP4, //ico-2
		20, //cost-3
		false, //status-4 true-owned false-not owned
		0, // cooldown-5 in sec
		false, //type-6 true-active false-passive
		0 // energy cost-7
	],
]