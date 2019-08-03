if(global.paused){
	global.pause_timer -=1
	if(global.pause_timer == 0){
		with(potato){
		pDir = 180-darctan2(y-mouse_y,x-mouse_x)
		pSpeed = 8
		global.paused = false
		global.pause_timer = 60
		}
	}
}