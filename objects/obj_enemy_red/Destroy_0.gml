/// @description 

spawn.encount -= 1

if irandom_range(1,4) == 1{
	box = instance_create_depth(x, y, depth, Obj_ammo)
	with(box){
		drop = other.drop
	}
}

//xpadd(xp)
soulsadd(souls)