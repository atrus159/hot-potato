
for(var i = 0; i<ds_list_size(active_list); i++){
	if(ds_list_find_value(active_list,i) == 1){
	draw_set_color(c_yellow)	
	}else{
	draw_set_color(c_black)
	}
	draw_rectangle(10+i*15, 10, 20+i*15,20,false)
}