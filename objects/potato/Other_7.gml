if(sprite_index == potato_hit_anim){
	sprite_index = potato_sprt	
}
else if(sprite_index == potato_die_anim){
	level_control.restart_flag = 1
	room_restart()	
}
if(sprite_index == potato_win){
if(instance_exists(group_end) || level_control.run_mode == 0){
room_goto(menu)
}else{
room_goto_next()
}	
	
}