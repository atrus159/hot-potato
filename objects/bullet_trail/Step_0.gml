/// @description
// You can write your code in this editor

	//trail effect list 
	if(instance_exists(myBullet)){
	ds_list_add(x_list, myBullet.x);
	ds_list_add(y_list, myBullet.y);
	}
	if (ds_list_size(x_list) > blt_num) { 
		//number of points on trail. We only need to check one list, 
		//since their sizes are synchronized
	  ds_list_delete(x_list, 0);
	  ds_list_delete(y_list, 0);
	}

  //make sure it is destoryed after become transparent
	blt_alpha = blt_alpha - 0.05;