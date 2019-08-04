if(!global.paused){
	x+=lengthdir_x(pSpeed,pDir)
	y+=lengthdir_y(pSpeed,pDir)
	
	par_potato_direction = pDir;
	part_type_gravity(par_potato,0.05,par_potato_direction);//update the direction of the particle type
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

