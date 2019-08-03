var facing = -2
if(pDir >90 && pDir <270){
	facing = 2
}
draw_sprite_ext(sprite_index, -1, x, y, facing, 2, 0, c_white, 1)

if(global.paused){
draw_set_color(c_yellow)
var curX = x;
var curY = y;
var curD = -darctan2(mouse_y-y, mouse_x-x)
var lastX = x;
var lastY = y
for(var i = 0; i<5; i++){
	draw_set_alpha(1/(i+1))

	while(true){
		
	curX+=lengthdir_x(8,curD)
	curY+=lengthdir_y(8,curD)
	if(curD > 360){
		curD -=360	
	}
	if(curD <0){
		curD +=360	
	}
	if(curX>room_width || curX<0 || curY>room_height || curY<0){
			draw_line_width(lastX,lastY,curX,curY,3)
			break
			break
	}
	var col = instance_place(curX,curY,wall)
	if(col){
	with(col){
	var bar1 = image_angle - (180 - darctan2(image_yscale, image_xscale))
	var bar2 = bar1 + 180
	var angleTo = 180-darctan2(y-curX, x-curY)
	}

	 var normal = col.image_angle+90
	if(abs(angle_difference(angleTo, col.image_angle)) < abs(angle_difference(bar2, col.image_angle))){
	  normal = col.image_angle
	}
	if(abs(angle_difference(angleTo, col.image_angle+180)) < abs(angle_difference(bar1, col.image_angle+180))){
	 normal = col.image_angle
	 }


	var direction_dif = 180 + curD - normal
	curD = normal - direction_dif
	draw_line_width(lastX,lastY,curX,curY,3)
	lastX = curX
	lastY = curY
	break;
	}
	}
}
}
draw_set_alpha(1)