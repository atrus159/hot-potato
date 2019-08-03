/// @description
// You can write your code in this editor

if (global.paused == false){
	
	
	motion_set(bl_dir, bl_speed);
	
		//trail effect list 

	ds_list_add(x_list, x);
	ds_list_add(y_list, y);
	if (ds_list_size(x_list) > blt_num) { 
		//number of points on trail. We only need to check one list, 
		//since their sizes are synchronized
	  ds_list_delete(x_list, 0);
	  ds_list_delete(y_list, 0);
	}
	
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




