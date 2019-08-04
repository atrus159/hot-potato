pSpeed = 0
pDir = 0

//color : AB5130

//--------------------------------------------------------------------------------
//create the particle system
ps_potato = part_system_create();

//set the depth and the default position of the particle system
part_system_depth(ps_potato, 0);

//change the base position, not useful
//part_system_position(ps_potato, x, y);


//create the particle type
par_potato = part_type_create();
part_type_shape(par_potato,pt_shape_explosion);
part_type_scale(par_potato,1,1);
part_type_size(par_potato, 0.1, 0.5, - 0.01, 0); 
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
part_type_color1(par_potato, c_yellow); //color does not change in color1

//set the alpha value
part_type_alpha2(par_potato,1,0);
// alpha2 will make 1 for all of the parts in the beginning, and then lower it to 50% after

//set the speed for parts
part_type_speed(par_potato, 0.5, 0.75,0,0); //part_type_speed(ind, speed_min, speed_max, speed_incr, speed_wiggle

//the direction of the particles, in this case, is how hte parts spread behind the bullet
//I think this does not work with our bullet trail

part_type_direction(par_potato,0,359,0,0);

//add gravity value to parts, not sure if its necessary, will test later
//is this case, the direction will be the opposite direction of the bullet.
part_type_gravity(par_potato,0.02,90);//part_type_gravity(ind, grav_amount, grav_direction)

//orientation of the parts, important for the appreance
part_type_orientation(par_potato, 0, 359, 10, 0, true);
//part_type_orientation(ind, ang_min, ang_max, ang_incr, ang_wiggle, ang_relative)

//the most important part for parts, the lifespan for the particles
part_type_life(par_potato,10, 50);

//with the blend in effect
part_type_blend(par_potato,true);


//next is the creation of the emitter system

emit_potato = part_emitter_create(ps_potato);

//x,y value to keep track of the potato
potato_x = x;
potato_y = y;
