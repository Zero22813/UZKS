/// @description 

Shop_window.sname = name

switch(sid){
	default:
		Shop_window.info = desc +
		"\n\nВ инвентаре: " + string( global.items[sid][4] ) +
		"\n\nСтоимость: " + string(cost)
		break
	case 4:
	case 5:
	case 6:
		Shop_window.info = desc +
		"\n\nСтоимость: " + string(cost)
		break
}