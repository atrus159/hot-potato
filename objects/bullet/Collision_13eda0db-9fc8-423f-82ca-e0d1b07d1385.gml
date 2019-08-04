var myExplode = instance_create_depth(x,y,0,bullet_explode)
myExplode.image_angle = image_angle
instance_destroy(other)
instance_destroy(self)
	audio_play_sound(wood_break,1,0);