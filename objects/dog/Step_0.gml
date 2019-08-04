/// @description
// You can write your code in this editor

if (global.paused == false){
		
		
		time_count += 1;
		if (time_count == time_total){
		instance_create_depth(x, y, 0, bullet);
		time_count = 0;
			}
	
	
}

