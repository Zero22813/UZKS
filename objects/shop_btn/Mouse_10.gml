/// @description 

Shop_window.sname = name

switch(itemid){
	default:
		Shop_window.info = desc +
		"\n\nВ инвентаре: " + string( global.items[itemid][4] ) +
		"\n\nСтоимость: " + string(cost)
		break
	case 4:
	case 5:
	case 6:
		Shop_window.info = desc +
		"\n\nСтоимость: " + string(cost)
		break
}