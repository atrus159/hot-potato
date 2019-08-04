if(!restart_flag){
if(instance_exists(group_end) && run_mode == 1){
	for(var i = 0; i<ds_list_size(active_list); i++){
		if(ds_list_find_value(active_list,i) == 0){
			ds_list_set(active_list,i,1)
			return
		}
	}
}
}else{
	restart_flag = 0	
}