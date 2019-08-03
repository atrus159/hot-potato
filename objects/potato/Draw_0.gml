draw_sprite(sprite_index, -1, x, y)

var angleTo = (180-darctan2(wall.y-y,wall.x-x)) mod 360
draw_set_color(c_lime)
draw_set_font(font0)
draw_text(100,100,angleTo)