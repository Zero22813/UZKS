/// @description Insert description here
// You can write your code in this editor

// Режим дебага
global.debug = true

// открытое окно интерфейса (0 - если ничего не открыто)
global.curwin = 0

// иконка курсора
global.mico = Spr_cursor_en
depth = -3

// игровая валюта
global.souls = 10000

// Навыки
#region skills
global.skills = [
	///////////////////////Скорострельность//////////////////////////////
	[ //skill1 id-0
		"Скорострельность", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF1, //ico-2
		100, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-1
		"Скорострельность+", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF2, //ico-2
		500, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-2
		"Скорострельность++", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF3, //ico-2
		800, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-3
		"Скорострельность+++", //name-0
		"Повышает скорострельность\nстрелкового оружия.", //desc-1
		spr_RF4, //ico-2
		1500, //cost-3
		false //status-4 true-owned false-not owned
	],
	///////////////////////Железная воля//////////////////////////////
	[ //skill1 id-4
		"Железная воля", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will1, //ico-2
		100, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-5
		"Железная воля+", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will2, //ico-2
		300, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-6
		"Железная воля++", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will3, //ico-2
		500, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-7
		"Железная воля+++", //name-0
		"Увеличивает запас брони.", //desc-1
		spr_Iron_Will4, //ico-2
		1000, //cost-3
		false //status-4 true-owned false-not owned
	],
	///////////////////////Повышение здоровья//////////////////////////////
	[ //skill1 id-8
		"Повышение здоровья", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH1, //ico-2
		100, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-9
		"Повышение здоровья+", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH2, //ico-2
		400, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-10
		"Повышение здоровья++", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH3, //ico-2
		900, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-11
		"Повышение здоровья+++", //name-0
		"Увеличивает запас здоровья.", //desc-1
		spr_MH4, //ico-2
		1400, //cost-3
		false //status-4 true-owned false-not owned
	],
	///////////////////////Стрелок//////////////////////////////
	[ //skill1 id-12
		"Стрелок", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST1, //ico-2
		100, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-13
		"Стрелок+", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST2, //ico-2
		200, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-14
		"Стрелок++", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST3, //ico-2
		500, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-15
		"Стрелок+++", //name-0
		"Увеличивает урон\nстрелкового оружия.", //desc-1
		spr_ST4, //ico-2
		1000, //cost-3
		false //status-4 true-owned false-not owned
	],
	///////////////////////Подрывник//////////////////////////////
	[ //skill1 id-16
		"Подрывник", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM1, //ico-2
		500, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-17
		"Подрывник+", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM2, //ico-2
		1000, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-18
		"Подрывник++", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM3, //ico-2
		1500, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-19
		"Подрывник+++", //name-0
		"Увеличивает урон взрывчатки.", //desc-1
		spr_DM4, //ico-2
		2000, //cost-3
		false //status-4 true-owned false-not owned
	],
	///////////////////////Вампиризм//////////////////////////////
	[ //skill1 id-20
		"Вампиризм", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP1, //ico-2
		300, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-21
		"Вампиризм+", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP2, //ico-2
		700, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-22
		"Вампиризм++", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP3, //ico-2
		1200, //cost-3
		false //status-4 true-owned false-not owned
	],
	[ //skill1 id-23
		"Вампиризм+++", //name-0
		"Похищает здоровье\nпротивника во время атаки.", //desc-1
		spr_VP4, //ico-2
		2000, //cost-3
		false //status-4 true-owned false-not owned
	],
]
#endregion

#region items
global.items = [
	[//id-0
		"Аптека", //name-0
		"Восстанавливает здоровье.", //desc-1
		ico_apteka_64, //ico-2
		200, //cost-3
		0 //qty-4
	],
	[//id-1
		"Граната", //name-0
		"Наносит большой\nвзрывной урон.", //desc-1
		ico_grenade_64, //ico-2
		250, //cost-3
		0 //qty-4
	],
	[//id-2
		"Морфий(Comming soon)", //name-0
		"Постепенно востанавливает\nздоровье.", //desc-1
		ico_med_64, //ico-2
		500, //cost-3
		0 //qty-4
	],
	[//id-3
		"Адреналин(Comming soon)", //name-0
		"Временно уменьшает\nполучаемый урон.", //desc-1
		ico_med2_64, //ico-2
		350, //cost-3
		0 //qty-4
	],
	[//id-4
		"Ремонт брони", //name-0
		".", //desc-1
		ico_armor_64, //ico-2
		500, //cost-3
		0 //qty-4
	],
	[//id-5
		"Патроны для автомата", //name-0
		"Дополнительные патроны.", //desc-1
		ico_ammo_64, //ico-2
		250, //cost-3
		0 //qty-4
	],
		[//id-6
		"Патроны для пистолета", //name-0
		"Дополнительные патроны.", //desc-1
		ico_ammo_64, //ico-2
		100, //cost-3
		0 //qty-4
	],
	
]
#endregion