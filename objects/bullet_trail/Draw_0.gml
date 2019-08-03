/// @description
// You can write your code in this editor

if (global.paused == false){
	
	for (i = 0; i < ds_list_size(x_list) - 1; i++) {
		
	  var x0 = ds_list_find_value(x_list, i);
	  var y0 = ds_list_find_value(y_list, i);

	  var x1 = ds_list_find_value(x_list, i + 1);
	  var y1 = ds_list_find_value(y_list, i + 1);

	  // the hairy bit -- tile a sprite along this line
	  var dir = point_direction(x0, y0, x1, y1);

	  // one trail image every 10 pixels
	  var x_offset = lengthdir_x(10, dir);
	  var y_offset = lengthdir_y(10, dir); 
	  
	  while (x0 < x1) {
	    // replace sprite_to_tile_along_trail with your trail sprite
	    // this just draws subimage 0 of your trail sprite rotated to match `dir`
	    draw_sprite_ext(bullet_trail_sprt, 0, x0, y0, 1, 1, dir, c_white, 1);

	    x0 += x_offset;
	    y0 += y_offset;
	  }
	}

}
