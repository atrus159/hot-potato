
if(!myGroup.active){
		draw_set_alpha(0.5)
}


draw_sprite(sprite_index,mouseOver,x,y)
draw_set_color(c_black)
draw_set_font(font0)
draw_text(x-sprite_width/2+20,y-10,myText)

draw_set_alpha(1)