if(mouse_check_button(mb_left)){
	if(mouse_x > 940 && mouse_x<960){
		mouse_clicked = 1
	}
}else{
	mouse_clicked = 0	
}
if(mouse_clicked){
		y =  topY - (sprite_height/(room_height-200))*(mouse_y - 100) 
		if(y< topY-sprite_height+600){
		y = topY-sprite_height+600
		}
		if(y>topY){
		y = topY	
		}	
}