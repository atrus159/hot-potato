if(instance_exists(group_end)){
	for(var i = 0; i<ds_list_size(active_list); i++){
		if(ds_list_find_value(active_list,i) == 0){
			ds_list_set(active_list,i,1)
			break
		}
	}
}