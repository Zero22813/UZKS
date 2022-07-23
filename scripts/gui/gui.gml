function Draw_GUI_Button(x, y, text){
	draw_set_color(c_dkgray)
	draw_rectangle(x-10, y-10, x+25, y+25, false)
	draw_set_color(c_aqua)
	draw_text(x,y, text)
}

function gen_btn(qty, obj, type){
	
	for ( i = 0; i < qty; i++ ){
		array_push(btns, instance_create_depth(200 + 100*i, 300, -2, obj ))
		with(btns[i]) {
			switch type{
				case "item":
					getitemfromid(other.i)
					break
				case "skill":
					getskillfromid(other.i)
					break
			}
			xdif = 180 + 100 * (other.i % 8)
			ydif = 220 + 100 * int64(other.i / 8)
		}
	}
	
}