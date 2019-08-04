/// @description
// You can write your code in this editor

if (global.paused == false){
		
		
		time_count += 1;
		if (time_count == time_total && isBullet == true){
			var facing = 1
			var angle = image_angle
			if(image_xscale<0){
				facing = -1	
				angle -= 180
			}
			var myShot = instance_create_depth(x+lengthdir_x(100*facing,image_angle), y+lengthdir_y(100*facing,image_angle), 0, bullet);
			audio_play_sound(arf,1,0)
			myShot.image_angle = angle
			myShot.bl_dir = angle
			time_count = 0
			sprite_index = dog_jump_anim
			}
	
	
}

