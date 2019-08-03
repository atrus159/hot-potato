draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)

var bar1 = image_angle - (180 - darctan2(image_yscale, image_xscale))
var bar2 = image_angle + (180 - darctan2(image_yscale, image_xscale))
var bar3 = bar1 + 180
var bar4 = bar2 + 180

draw_set_color(c_lime)

draw_line(x,y,x+lengthdir_x(500,bar1),y+lengthdir_y(500,bar1))
draw_line(x,y,x+lengthdir_x(500,bar2),y+lengthdir_y(500,bar2))
draw_line(x,y,x+lengthdir_x(500,bar3),y+lengthdir_y(500,bar3))
draw_line(x,y,x+lengthdir_x(500,bar4),y+lengthdir_y(500,bar4))