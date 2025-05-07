function SavingUI(argument0) {
	//normal save file
	var filename = argument0

	var root_list = ds_list_create()
	var _map = ds_map_create()
	ds_list_add(root_list,_map)
	ds_list_mark_as_map(root_list,ds_list_size(root_list)-1)
	
	
	//save screen resolution
	ds_map_add(_map, "global.screenScale", global.screenScale);

	//controls-keyboard
	ds_map_add(_map, "global.controls_changed", global.controls_changed);
	
	ds_map_add(_map, "key_space", global.key_space);
	ds_map_add(_map, "key_ability", global.key_ability);
	ds_map_add(_map, "key_G", global.key_G);
	ds_map_add(_map, "key_tab", global.key_tab);
	
	ds_map_add(_map, "key_L1", global.key_L1);
	ds_map_add(_map, "key_L2", global.key_L2);
	ds_map_add(_map, "key_R1", global.key_R1);
	ds_map_add(_map, "key_R2", global.key_R2);
	
	ds_map_add(_map, "key_select", global.key_select);
	ds_map_add(_map, "key_enter", global.key_enter);
	
	
	//controls-gamepad
	ds_map_add(_map, "gp_space", global.gp_space);
	ds_map_add(_map, "gp_ability", global.gp_ability);
	ds_map_add(_map, "gp_G", global.gp_G);
	ds_map_add(_map, "gp_tab", global.gp_tab);
	
	ds_map_add(_map, "gp_L1", global.gp_L1);
	ds_map_add(_map, "gp_L2", global.gp_L2);
	ds_map_add(_map, "gp_R1", global.gp_R1);
	ds_map_add(_map, "gp_R2", global.gp_R2);
	
	ds_map_add(_map, "gp_select", global.gp_select);
	ds_map_add(_map, "gp_enter", global.gp_enter);

	
	ds_map_add(_map, "global.sectormusicVOL", global.music_volume);
	ds_map_add(_map, "global.sectorsfxVOL", global.sfx_volume);

	var _map_wrapper = ds_map_create()
	ds_map_add_list(_map_wrapper, "ROOT", root_list)

	var _string = json_encode(_map_wrapper)
	SaveStringToFile("XGA.SAVEFILE.UI.dat",_string)

	ds_map_destroy(_map_wrapper)


}
