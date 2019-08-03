if(global.paused){
draw_set_alpha(0.3)
draw_set_color(c_maroon)
draw_rectangle(0,0,room_width,room_height,false)
draw_circle(room_width/2,room_height/2,100,false)
for(var i = 15; i<global.pause_timer+15;i++){
	draw_set_color(c_yellow)
	draw_line_width(room_width/2 +lengthdir_x(50,i*(360/60)),room_height/2 +lengthdir_y(50,i*(360/60)),room_width/2 +lengthdir_x(90,i*(360/60)),room_height/2 +lengthdir_y(90,i*(360/60)),3)
}
draw_set_alpha(1)
}