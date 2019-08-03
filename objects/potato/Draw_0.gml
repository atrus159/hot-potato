var facing = -2
if(pDir >90 && pDir <270){
	facing = 2
}
draw_sprite_ext(sprite_index, -1, x, y, facing, 2, 0, c_white, 1)