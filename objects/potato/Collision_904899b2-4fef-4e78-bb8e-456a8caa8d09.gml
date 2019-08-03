with(wall){
var bar1 = image_angle - (180 - darctan2(image_yscale, image_xscale))
var bar2 = bar1 + 180
var angleTo = 180-darctan2(y-other.y, x-other.x)
var corner1x = x + lengthdir_x(32*image_xscale, image_angle)
var corner1y = y + lengthdir_y(32*image_yscale, image_angle)
var corner2x = x + lengthdir_x(-32*image_xscale, image_angle)
var corner2y = y + lengthdir_y(32*image_yscale, image_angle)
var corner3x = x + lengthdir_x(-32*image_xscale, image_angle)
var corner3y = y + lengthdir_y(-32*image_yscale, image_angle)
var corner4x = x + lengthdir_x(32*image_xscale, image_angle)
var corner4y = y + lengthdir_y(-32*image_yscale, image_angle)
}

  var normal = other.image_angle+90
if(abs(angle_difference(angleTo, other.image_angle)) < abs(angle_difference(bar2, other.image_angle))){
  normal = other.image_angle
}
if(abs(angle_difference(angleTo, other.image_angle+180)) < abs(angle_difference(bar1, other.image_angle+180))){
  normal = other.image_angle
}


if(distance_to_point(corner1x,corner1y) < 5 || distance_to_point(corner2x,corner2y) < 5 || distance_to_point(corner3x,corner3y) < 5 || distance_to_point(corner4x,corner4y) < 5 ){
	pDir = 180+pDir
}else{

var direction_dif = 180 + pDir - normal
pDir = normal - direction_dif
}
