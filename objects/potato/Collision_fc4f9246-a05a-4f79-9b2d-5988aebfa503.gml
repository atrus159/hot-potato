if(sprite_index != potato_die_anim && sprite_index != potato_win){
sprite_index = potato_die_anim
	audio_play_sound(pop,1,0);
with(other){
var myExplode = instance_create_depth(x,y,0,bullet_explode)
myExplode.image_angle = image_angle
instance_destroy(self)	
}
}