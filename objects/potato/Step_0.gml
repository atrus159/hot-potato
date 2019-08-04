if(!global.paused){
	x+=lengthdir_x(pSpeed,pDir)
	y+=lengthdir_y(pSpeed,pDir)
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

potato_x = x;
potato_y = y;