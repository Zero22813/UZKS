/// @description 

buyitem(sid)
Shop_window.sname = name

switch(sid){
	default:
		Shop_window.info = desc +
		"\n\nВ инвентаре: " + string( global.items[sid][4] ) +
		"\n\nСтоимость: " + string(cost)
		break
	case 4:
		Shop_window.info = desc +
		"\n\nСтоимость: " + string(cost)
		break
	case 5:
		Shop_window.info = desc +
		"\n\nВ инвентаре: " + string( Obj_player.ammo[0][0] ) +
		"\n\nСтоимость: " + string(cost)
		break
	case 6:
		Shop_window.info = desc +
		"\n\nВ инвентаре: " + string( Obj_player.ammo[1][0] ) +
		"\n\nСтоимость: " + string(cost)
		break
}