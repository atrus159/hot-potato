if(sprite_index != potato_die_anim){
audio_play_sound(wow,1,0);
if(instance_exists(group_end)){
room_goto(menu)
}else{
room_goto_next()
}
}
