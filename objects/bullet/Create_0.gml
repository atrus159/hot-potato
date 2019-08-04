/// @description 
// You can write your code in this editor

bl_speed = 7;
bl_dir = image_angle;

image_xscale = 2
image_yscale = 2
//the create of particle system


//--------------------------------------------------------------------------------
//create the particle system
trail_system = part_system_create();

//set the depth and the default position of the particle system
part_system_depth(trail_system, 0 );

//change the base position, not useful
//part_system_position(trail_system, x, y);


//create the particle type
par_blt = part_type_create();
part_type_shape(par_blt,pt_shape_smoke);
part_type_scale(par_blt,1,1);
part_type_size(par_blt, 0.15, 0.3, - 0.01, 0); 
//part_type_size(ind, size_min, size_max, size_incr, size_wiggle).
/*
ind is the particle variable. 
size_min and size_max determine the range of the particle size when it is first created.
If you want a uniform size, simply enter the same value for both the min and the max. 
size_incr is a value that allows the particle to grow or shrink over time. 
This value determines the speed of growth, 
so if you don’t want your sprite to change size, you can use a value of 0. 
size_wiggle is slightly more complicated, so we’ll cover that in the advanced techniques section below.
*/

//change the color of the particles
part_type_color1(par_blt, c_white); //color does not change in color1

//set the alpha value
part_type_alpha2(par_blt,1,0);
// alpha2 will make 1 for all of the parts in the beginning, and then lower it to 50% after

//set the speed for parts
part_type_speed(par_blt,0.1, 0.5,0,0); //part_type_speed(ind, speed_min, speed_max, speed_incr, speed_wiggle

//the direction of the particles, in this case, is how hte parts spread behind the bullet
//I think this does not work with our bullet trail

part_type_direction(par_blt,0,359,0,0);

//add gravity value to parts, not sure if its necessary, will test later
//is this case, the direction will be the opposite direction of the bullet.
part_type_gravity(par_blt,0.02,90);//part_type_gravity(ind, grav_amount, grav_direction)

//orientation of the parts, important for the appreance
part_type_orientation(par_blt, 0, 359, 10, 0, true);
//part_type_orientation(ind, ang_min, ang_max, ang_incr, ang_wiggle, ang_relative)

//the most important part for parts, the lifespan for the particles
part_type_life(par_blt,10, 50);

//with the blend in effect
part_type_blend(par_blt,true);


//next is the creation of the emitter system

par_emit = part_emitter_create(trail_system);






