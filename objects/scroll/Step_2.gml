if(activate_flag != noone){
	var relY = room_height/2 - activate_flag.y
	y+=relY+30
	instance_create_depth(activate_flag.x, room_height/2,-1,unlock)
	activate_flag = noone
}