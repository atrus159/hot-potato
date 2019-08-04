
if(myGroup.active){
	if(fullRun){
		level_control.run_mode = 1	
	}else{
		level_control.run_mode = 0
	}
	audio_play_sound(click,1,0)
	room_goto(myLevel)
}