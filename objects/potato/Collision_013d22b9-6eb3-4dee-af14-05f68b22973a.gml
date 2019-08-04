if(sprite_index != potato_die_anim){
audio_play_sound(wow,1,0);
if(instance_exists(group_end) || level_control.run_mode == 0){
room_goto(menu)
}else{
room_goto_next()
}
}
