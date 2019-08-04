if(instance_exists(group)){
	if(!create_flag){
	for(var i = 0; i<ds_list_size(active_list); i++){
		if(ds_list_find_value(active_list,i)==1){
			var myGroup =  ds_list_find_value(group_list,i)
			myGroup.active = 1
			scroll.activate_flag = myGroup
		}
	}
	}else{
		create_flag = 0	
	}
}