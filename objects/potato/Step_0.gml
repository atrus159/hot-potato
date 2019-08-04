if(!global.paused){
	x+=lengthdir_x(pSpeed,pDir)
	y+=lengthdir_y(pSpeed,pDir)
	
	
	par_potato_direction = pDir;
	part_type_gravity(par_potato,0.05,par_potato_direction);//update the direction of the particle type
}
if(global.paused && mouse_check_button_pressed(mb_left)){
pDir = 180-darctan2(y-mouse_y,x-mouse_x)
pSpeed = 8
	global.paused = false
	global.pause_timer = 60
}

if(pSpeed <0){
	pSpeed = -pSpeed
	pDir -=180
}
if(pDir>360){
	pDir -=360	
}
if(pDir <0){
	pDir +=360	
}

