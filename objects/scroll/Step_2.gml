if(activate_flag != noone){
	var relY = room_height/2 - activate_flag.y
	y+=relY+30
	instance_create_layer(activate_flag.x, room_height/2,0,unlock)
	activate_flag = noone
}