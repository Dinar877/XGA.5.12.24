function LoadingUI() {

	//get current UI and control adjustments
	if (file_exists("XGA.SAVEFILE.UI.dat"))
	{
			var _map_decoded = LoadJSONFromFile("XGA.SAVEFILE.UI.dat")
			var list = ds_map_find_value(_map_decoded,"ROOT")
			var size = ds_list_size(list)
		
			for (var i = 0; i < size; i++)
			{
				var listvalue = ds_list_find_value(list,i)
				
				//audio
				global.music_volume = ds_map_find_value(listvalue, "global.sectormusicVOL");
				global.sfx_volume = ds_map_find_value(listvalue, "global.sectorsfxVOL");
				
				//screenScale
				#region
				global.screenScale = ds_map_find_value(listvalue,"global.screenScale")
				if (global.screenScale == 0)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(320,180);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 0;
				}
				else if (global.screenScale == 2)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(640,360);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 2;
				}
				else if (global.screenScale == 4)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(960,540);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 4;
				}
				else if (global.screenScale == 6)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(1366,768);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 6;
				}
				else if (global.screenScale == 8)
				{
					var view = view_camera[e__VW.Camera];
					window_set_fullscreen(false)
					window_set_size(1920,1080);
					surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
					global.screenScale = 8;
				}
				else if (global.screenScale = 10)
				{
					if (window_get_fullscreen() == false)
					{
						var view = view_camera[e__VW.Camera];
						window_set_fullscreen(true)
						surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
						global.screenScale = 10;
					}
				}
				#endregion
				
				//controls changed
				#region
				global.controls_changed = ds_map_find_value(listvalue, "global.controls_changed");
		
				//controls-keyboard
				global.key_space = ds_map_find_value(listvalue, "key_space");
				global.key_ability = ds_map_find_value(listvalue, "key_ability");
				global.key_G = ds_map_find_value(listvalue, "key_G");
				global.key_tab = ds_map_find_value(listvalue, "key_tab");
	
				global.key_L1 = ds_map_find_value(listvalue, "key_L1");
				global.key_L2 = ds_map_find_value(listvalue, "key_L2");
				global.key_R1 = ds_map_find_value(listvalue, "key_R1");
				global.key_R2 = ds_map_find_value(listvalue, "key_R2");
	
				global.key_select = ds_map_find_value(listvalue, "key_select");
				global.key_enter = ds_map_find_value(listvalue, "key_enter");
	
	
	
	
				//controls-gamepad
				global.gp_space = ds_map_find_value(listvalue, "gp_space");
				global.gp_ability = ds_map_find_value(listvalue, "gp_ability");
				global.gp_G = ds_map_find_value(listvalue, "gp_G");
				global.gp_tab = ds_map_find_value(listvalue, "gp_tab");
	
				global.gp_L1 = ds_map_find_value(listvalue, "gp_L1");
				global.gp_L2 = ds_map_find_value(listvalue, "gp_L2");
				global.gp_R1 = ds_map_find_value(listvalue, "gp_R1");
				global.gp_R2 = ds_map_find_value(listvalue, "gp_R2");
	
				global.gp_select = ds_map_find_value(listvalue, "gp_select");
				global.gp_enter = ds_map_find_value(listvalue, "gp_enter");
				#endregion
			}
			
			
			if (ds_exists(list,ds_type_list))
			{
				ds_list_destroy(list)
			}

			ds_map_destroy(_map_decoded);
	}
}
