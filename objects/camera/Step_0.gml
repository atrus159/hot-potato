if(instance_exists(potato) && !global.paused){
	var avX = (potato.x + room_width)/3
	var avY = (potato.y + room_height)/3
	mp_linear_step(avX,avY,distance_to_point(avX,avY)/50,false)
}

camera_set_view_pos(view_camera[0],x-widthOffset+random_range(global.shake, -global.shake),y-heightOffset+random_range(global.shake, -global.shake))
global.shake*=0.9;
if(global.shake<0.1){
global.shake = 0;
}
