/// @description Insert description here
// You can write your code in this editor


btns = []
depth = -1

sname = "name"
info = "none"

// Кнопки скиллов
for ( i = 0; i < array_length(global.items); i++ ){
	array_push(btns, instance_create_depth(200 + 100*i, 300, -2, Inv_btn ))
	with(btns[i]) {
		getitemfromid(other.i)
		xdif = 180 + 100 * (other.i % 8)
		ydif = 220 + 100 * int64(other.i / 8)
	}
}