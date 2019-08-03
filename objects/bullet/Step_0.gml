/// @description
// You can write your code in this editor

if (global.paused == false){
	
	motion_add(bl_dir, bl_speed);
	
	//create the bullet trail
	
	for ( var i = 0; i < blt_num; i ++){
		
		var blt;
		blt = instance_create( lengthdir_x( i + 1, bl_dir + 180) , lengthdir_y(i + 1, bl_dir + 180), bullet_trail);
		with (blt){
			blt_alpha = blt_alpha / i;
		}
	}
	
}
