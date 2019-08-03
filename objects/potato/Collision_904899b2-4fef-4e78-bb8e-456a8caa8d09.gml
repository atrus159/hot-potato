var angleTo = (180-darctan2(other.y-y,other.x-x)) mod 360
var bar1 = other.image_angle - (180 - darctan2(image_yscale, image_xscale))
var bar2 = other.image_angle + (180 - darctan2(image_yscale, image_xscale))
var bar3 = bar1 + 180
var bar4 = bar2 + 180

var normal = other.image_angle + 90

if((angleTo > bar1 && angleTo < bar2) || (angleTo > bar3 && angleTo < bar4)){
 //var normal = other.image_angle
 
}



var direction_dif = 180 + pDir - normal
pDir = normal - direction_dif