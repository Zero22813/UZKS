/// @description инит вар
// You can write your code in this editor

mspd = 5 // скорость передвижения
maxhp = 50 // максимальное здоровье
hp = maxhp // текущее здоровье

maxarmor = 50 // максимальная броня
armor = maxarmor // текущая броня

in_dmg = false // получен урон

dmg = 5 // урон оружия
exdmg = 100 // урон взрывом
lifesteal = 0 // восстановление здоровья после нанесения урона

weapon = "rifle" //текущее оружие

atkspd = 7 // скорость атаки
atkcount = 7 // откат скорости атаки

// виды патронов
blts = [
Obj_bullet_black,
Obj_bullet_blue,
Obj_bullet_green,
Obj_bullet_orange,
Obj_bullet_purple,
Obj_bullet_red,
Obj_bullet_yellow
]
curblt = 0 //текущий вид патрон
curitem = 0 // текукщий предмет

rifAmmo = 60 // всего патрон автомата
gunAmmo = 14 // всего патрон пистолета

rifInLoad = 30 // патрон в магазине автомата
gunInLoad = 7 // патрон в магазине питолета

keys = [0] // список ключей

alarm[0] = 120 // постепенное восстановление брони