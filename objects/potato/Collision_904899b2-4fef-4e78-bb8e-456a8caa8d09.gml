global.shake = 10;

with(other){
var bar1 = image_angle - (180 - darctan2(image_yscale, image_xscale))
var bar2 = bar1 + 180
var angleTo = 180-darctan2(y-other.y, x-other.x)
}

  var normal = other.image_angle+90
if(abs(angle_difference(angleTo, other.image_angle)) < abs(angle_difference(bar2, other.image_angle))){
  normal = other.image_angle
}
if(abs(angle_difference(angleTo, other.image_angle+180)) < abs(angle_difference(bar1, other.image_angle+180))){
  normal = other.image_angle}


var direction_dif = 180 + pDir - normal
pDir = normal - direction_dif
	
//activate the burst
//change to create for some bugging reason
part_particles_create(ps_potato, x, y, par_potato, 20 + irandom(20) );

