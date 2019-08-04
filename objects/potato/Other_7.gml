if(sprite_index == potato_hit_anim){
	sprite_index = potato_sprt	
}
else if(sprite_index == potato_die_anim){
	level_control.restart_flag = 1
	room_restart()	
}