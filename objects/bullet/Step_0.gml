/// @description
// You can write your code in this editor

if (global.paused == false){
	
	
	motion_set(bl_dir, bl_speed);
	
	//acticate the emmiter
	//part_emitter_region(ps, ind, xmin, xmax, ymin, ymax, shape, distribution

	//define the region area of the emitter
	//x, y value for storing the positions
	
	part_emitter_region(trail_system, par_emit, x - 5, x + 5, y -5 , y + 5, 0,0);
	
    //activate the burst
	part_emitter_burst(trail_system ,par_emit , par_blt , 5 + irandom(5) );
	//(ps, emit, partype, number of particles)
	
	
	//create the bullet trail
	
	//for ( var i = 0; i < blt_num; i ++){
		
	//	var blt;
	//	blt = instance_create_depth( x+ lengthdir_x( i + 1, bl_dir + 180) , y+lengthdir_y(i + 1, bl_dir + 180), 0,  bullet_trail);
	//	with (blt){
	//		blt_x = x+lengthdir_x(i + 2, other.bl_dir + 180);
	//		blt_y = y+lengthdir_y(i + 2, other.bl_dir + 180);
	//		blt_r = bullet.bl_r - i;
	//		blt_alpha = blt_alpha / (i+1);
	//		if (blt_alpha <= 0.1){
	//			instance_destroy(blt);
	//						}

	//	}
	//}
	
}else{
	motion_set(bl_dir,0)	
}




