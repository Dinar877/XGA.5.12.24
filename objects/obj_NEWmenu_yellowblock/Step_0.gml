/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()


stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,time+message_pos+time2+1)
	}
}
else time2 = 0;

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}

if (killall <= 0)
{
	if (image_alpha < 1)
	{
		image_alpha+= 0.05
		alpha += 0.05
	}
}
else if (killall > 0)
{
	if (image_alpha > 0)
	{
		image_alpha-= 0.05
		alpha -= 0.05
	}
	else instance_destroy()
}

//menu going back
if (shoot_pressed) && (selected > 0) && (image_alpha >= 1)
	{
		killall = 1
		with(obj_NEWmenu_yellowblock)
		{
			killall = 1	
		}
		with(obj_NEWmenu_intro)
		{
			killall = 1	
			if (!file_exists("XGA.SAVEFILE.dat")) && (menu_index_heading = 2)
			{
				menu_index_heading = 0
				menu_index_item = 0
				menu_index_offpath = 0
			}
			else if (menu_index_offpath > 0)
			{
				menu_index_heading --;
				menu_index_offpath --;
				menu_index_item = 0
			}
			else 
			{
				menu_index_heading --;
				menu_index_item = 0
			}
		}
		with(obj_NEWmenu_blueblock)
		{
			killall = 1	
		}
	}
	
	
//sfx	
if (jump_pressed) && (selected > 0) && (image_alpha >= 1)
	{
		audio_stop_sound(snd_button_confirm);
		snd = audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
	}
	

if (killall <= 0)
{	
	//play game selected
	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 1) && (is_exit == 0)
	&& (is_load_yes == 0) && (is_load_no == 0)
	&& (is_recommended == 0) && (is_casual == 0)
	&& (is_1920x1080 == 0) && (is_1366x768 == 0)
	&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = 1
			}
		}
	
	//options selected
	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 1) && (is_savefile == 0) && (is_exit == 0)
	&& (is_load_yes == 0) && (is_load_no == 0)
	&& (is_recommended == 0) && (is_casual == 0)
	&& (is_1920x1080 == 0) && (is_1366x768 == 0)
	&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = 1
				menu_index_offpath = 1
			}
		}
	
	//exit game option selected
	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0) && (is_exit == 1)
	&& (is_load_yes == 0) && (is_load_no == 0)
	&& (is_recommended == 0) && (is_casual == 0)
	&& (is_1920x1080 == 0) && (is_1366x768 == 0)
	&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			game_end()
		}
	
	
	//screen size select
	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_1920x1080 == 0) && (is_1366x768 == 0) && (is_320x180 == 0) && (is_fullscrn == 1)
		{
			window_set_fullscreen(true)
			surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
		}
	else if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_1920x1080 == 0) && (is_1366x768 == 0) && (is_320x180 == 1) && (is_fullscrn == 0)
		{
			window_set_fullscreen(false)
			window_set_size(320,180);
			surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
		}
	else if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_1920x1080 == 0) && (is_1366x768 == 1) && (is_320x180 == 0) && (is_fullscrn == 0)
		{
			window_set_fullscreen(false)
			window_set_size(1366,768);
			surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
		}
	else if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_1920x1080 == 1) && (is_1366x768 == 0) && (is_320x180 == 0) && (is_fullscrn == 0)
		{
			window_set_fullscreen(false)
			window_set_size(1920,1080);
			surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
		}

	//load game?
	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0)
	&& (is_load_yes == 1) && (is_load_no == 0)
	&& (is_recommended == 0) && (is_casual == 0)
	&& (is_1920x1080 == 0) && (is_1366x768 == 0)
	&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			if (file_exists("XGA.SAVEFILE.dat"))
			{
				global.upgradecollected[999] = 0;
				global.upgradetrue[999] = 0;
		
				global.tiledata[9999] = false;
				global.tilesprite[9999] = false;
				global.tilex[9999] = false;
				global.tiley[9999] = false;
				global.tilesector[9999] = false;
				global.tileroom[9999] = 0;
				
				global.tileblocker[9999] = false;
				global.tileblocker2[9999] = false;
				global.tileitem[9999] = false;
				global.tiledataN = 0;
		
				global.doors_redblocker[999] = false;
				global.loading_startgame = 1;
				instance_create_layer(160,120,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
			}
			else if (!file_exists("XGA.SAVEFILE.dat"))
			{
				//for making collected upgrades not respawn
				global.upgradecollected[999] = 0;
				global.upgradetrue[999] = 0;
		
				global.tiledata[9999] = false;
				global.tilesprite[9999] = false;
				global.tilex[9999] = false;
				global.tiley[9999] = false;
				global.tileroom[9999] = 0;
		
				global.tiledataN = 0;
		
		
		
				global.doors_redblocker[999] = false;
		
				instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
			}
	
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = 3
			}
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_blueblock)
			{
				killall = 1	
			}
		}

	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0)
	&& (is_load_yes == 0) && (is_load_no == 1)
	&& (is_recommended == 0) && (is_casual == 0)
	&& (is_1920x1080 == 0) && (is_1366x768 == 0)
	&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_blueblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = 2
			}
		}

	//YES selected. Replace save file with new game.
	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0)
	&& (is_load_yes == 0) && (is_load_no == 0)
	&& (is_recommended == 0) && (is_casual == 1) && (is_test == 0)
	&& (is_1920x1080 == 0) && (is_1366x768 == 0)
	&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			global.mode_casual = 1;
			global.corrupted = 0;
			global.mode_recommended = 1;
			global.cutscene = 1
			
			global.mode_test = 1
			
			//for making collected upgrades not respawn
			global.upgradecollected[999] = 0;
			global.upgradecollected_main[999] = 0;
			global.upgradetrue[999] = 0;
	
			global.tiledata[9999] = false;
			global.tilesprite[9999] = false;
			global.tilex[9999] = false;
			global.tiley[9999] = false;
			global.tilesector[9999] = false;
			global.tileroom[9999] = 0;
			
			global.tileblocker[9999] = false;
			global.tileblocker2[9999] = false;
			global.tileitem[9999] = false;
			global.tiledataN = 0;
	
			global.mapgrid_tilegivenX[9999] = false;
			global.mapgrid_tilegivenY[9999] = false;
			global.mapgrid_tilegivenN = 0;
	
			global.doors_redblocker[999] = false;
			if (file_exists("XGA.SAVEFILE.dat"))
			{
				file_delete("XGA.SAVEFILE.dat")
			}
	
			instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
	
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = -2
			}
		}
		
	/*

	if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0)
		 && (is_load_yes == 0) && (is_load_no == 0)
		  && (is_recommended == 1) && (is_casual == 0) && (is_test == 0)
		   && (is_1920x1080 == 0) && (is_1366x768 == 0)
		   && (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			global.mode_recommended = 1;
			global.corrupted = 0;
			global.mode_casual = 0;
			global.cutscene = 1
			
			global.mode_test = 1
			
			//for making collected upgrades not respawn
			global.upgradecollected[999] = 0;
			global.upgradecollected_main[999] = 0;
			global.upgradetrue[999] = 0;
			global.upgradeID_room[999] = false
	
			global.tiledata[9999] = false;
			global.tilesprite[9999] = false;
			global.tilex[9999] = false;
			global.tiley[9999] = false;
			global.tilesector[9999] = false;
			global.tileroom[9999] = 0;
			
			global.tileblocker[9999] = false;
			global.tileblocker2[9999] = false;
			global.tileitem[9999] = false;
			global.tiledataN = 0;
	
			global.mapgrid_tilegivenX[9999] = false;
			global.mapgrid_tilegivenY[9999] = false;
			global.mapgrid_tilegivenN = 0;
	
			global.doors_redblocker[999] = false;
			if (file_exists("XGA.SAVEFILE.dat"))
			{
				file_delete("XGA.SAVEFILE.dat")
			}
	
			instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
	
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = -2
			}
		}
		
		*/
		
		
		//No selected. Go back.
		if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0)
		&& (is_load_yes == 0) && (is_load_no == 0)
		&& (is_recommended == 0) && (is_casual == 0) && (is_test == 1)
		&& (is_1920x1080 == 0) && (is_1366x768 == 0)
		&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				if (!file_exists("XGA.SAVEFILE.dat")) && (menu_index_heading = 2)
				{
					menu_index_heading = 0
					menu_index_item = 0
					menu_index_offpath = 0
				}
				else if (menu_index_offpath > 0)
				{
					menu_index_heading --;
					menu_index_offpath --;
					menu_index_item = 0
				}
				else 
				{
				menu_index_heading --;
				menu_index_item = 0
				}
			}
			with(obj_NEWmenu_blueblock)
			{
				killall = 1	
			}
		}
		
		//xga dev cor.
		if (jump_pressed) && (selected > 0) && (image_alpha >= 1) && (is_options == 0) && (is_savefile == 0)
		&& (is_load_yes == 0) && (is_load_no == 0)
		&& (is_recommended == 0) && (is_casual == 0) && (is_test == 0) && (is_test2 == 1)
		&& (is_1920x1080 == 0) && (is_1366x768 == 0)
		&& (is_320x180 == 0) && (is_fullscrn == 0)
		{
			killall = 1
			global.mode_recommended = 1;
			global.corrupted = 1;
			global.midgame = 1
			
			//for testing late game cutscene
			global.bossblockers[22] = 1
			global.bossblockers[21] = 1
			global.bossblockers[20] = 1
			global.bossblockers[4] = 1
			
			global.mode_casual = 0;
			//global.mode_test = 1
			global.cutscene = 1
			
			//for making collected upgrades not respawn
			global.upgradecollected[999] = 0;
			global.upgradecollected_main[999] = 0;
			global.upgradetrue[999] = 0;
			global.upgradeID_room[999] = false
	
			global.tiledata[9999] = false;
			global.tilesprite[9999] = false;
			global.tilex[9999] = false;
			global.tiley[9999] = false;
			global.tilesector[9999] = false;
			global.tileroom[9999] = 0;
			
			global.tileblocker[9999] = false;
			global.tileblocker2[9999] = false;
			global.tileitem[9999] = false;
			global.tiledataN = 0;
	
			global.mapgrid_tilegivenX[9999] = false;
			global.mapgrid_tilegivenY[9999] = false;
			global.mapgrid_tilegivenN = 0;
	
			global.doors_redblocker[999] = false;
			if (file_exists("XGA.SAVEFILE.dat"))
			{
				file_delete("XGA.SAVEFILE.dat")
			}
	
			instance_create_layer(160,90,layer_get_id("Inst_healthui_mapborder"),obj_floatpoint11);
	
			with(obj_NEWmenu_yellowblock)
			{
				killall = 1	
			}
			with(obj_NEWmenu_intro)
			{
				killall = 1	
				menu_index_heading = -2
			}
		}


}