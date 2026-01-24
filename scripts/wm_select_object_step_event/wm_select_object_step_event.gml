// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wm_select_object_step_event(){
	
	Gamepad_variables()
	
	if (active = true) && (delay < 1)
	{
		delay += 0.1
	}
	
	if (active = true) && (delay >= 1)
	{
		if (sector = WMdiscovered.mainsector)
		{
			if (left_key_pressed) && (instance_exists(obj_wm_a_s2))
			{
				active = false;
				delay = 0;
				obj_wm_a_s2.active = 1;
				obj_wm_a_s2.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (right_key_pressed) && (instance_exists(obj_wm_a_s1))
			{
				active = false;
				delay = 0;
				obj_wm_a_s1.active = 1;
				obj_wm_a_s1.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_t))
			{
				active = false;
				delay = 0;
				obj_wm_a_t.active = 1;
				obj_wm_a_t.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_v))
			{
				active = false;
				delay = 0;
				obj_wm_a_v.active = 1;
				obj_wm_a_v.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				
				
				global.sector_active = 0;
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 13) && (tileposy = 9) && (sectortile = 0)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.s1)
		{
			if (left_key_pressed) && (instance_exists(obj_wm_a_mainsector))
			{
				active = false;
				delay = 0;
				obj_wm_a_mainsector.active = 1;
				obj_wm_a_mainsector.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_s4))
			{
				active = false;
				delay = 0;
				obj_wm_a_s4.active = 1;
				obj_wm_a_s4.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_t))
			{
				active = false;
				delay = 0;
				obj_wm_a_t.active = 1;
				obj_wm_a_t.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 1;
				global.wmX = -1;
				global.wmY = 2;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 0) && (tileposy = 3) && (sectortile = 1)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.s2)
		{
			if (right_key_pressed) && (instance_exists(obj_wm_a_mainsector))
			{
				active = false;
				delay = 0;
				obj_wm_a_mainsector.active = 1;
				obj_wm_a_mainsector.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_s3))
			{
				active = false;
				delay = 0;
				obj_wm_a_s3.active = 1;
				obj_wm_a_s3.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_t))
			{
				active = false;
				delay = 0;
				obj_wm_a_t.active = 1;
				obj_wm_a_t.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 2;
				global.wmX = 27;
				global.wmY = 22;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 28) && (tileposy = 23) && (sectortile = 2)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.s3)
		{
			if (right_key_pressed) && (instance_exists(obj_wm_a_mainsector))
			{
				active = false;
				delay = 0;
				obj_wm_a_mainsector.active = 1;
				obj_wm_a_mainsector.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_v))
			{
				active = false;
				delay = 0;
				obj_wm_a_v.active = 1;
				obj_wm_a_v.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_s2))
			{
				active = false;
				delay = 0;
				obj_wm_a_s2.active = 1;
				obj_wm_a_s2.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 3;
				global.wmX = 50;
				global.wmY = 50;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 51) && (tileposy = 51) && (sectortile = 3)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.s4)
		{
			if (left_key_pressed) && (instance_exists(obj_wm_a_mainsector))
			{
				active = false;
				delay = 0;
				obj_wm_a_mainsector.active = 1;
				obj_wm_a_mainsector.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_v))
			{
				active = false;
				delay = 0;
				obj_wm_a_v.active = 1;
				obj_wm_a_v.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_s1))
			{
				active = false;
				delay = 0;
				obj_wm_a_s1.active = 1;
				obj_wm_a_s1.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 4;
				global.wmX = 0;
				global.wmY = 0;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 1) && (tileposy = 1) && (sectortile = 4)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.t)
		{
			if (right_key_pressed) && (instance_exists(obj_wm_a_s1))
			{
				active = false;
				delay = 0;
				obj_wm_a_s1.active = 1;
				obj_wm_a_s1.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_mainsector))
			{
				active = false;
				delay = 0;
				obj_wm_a_mainsector.active = 1;
				obj_wm_a_mainsector.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (left_key_pressed) && (instance_exists(obj_wm_a_s2))
			{
				active = false;
				delay = 0;
				obj_wm_a_s2.active = 1;
				obj_wm_a_s2.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 5;
				global.wmX = 0;
				global.wmY = 0;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 0) && (tileposy = 0) && (sectortile = 5)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.v)
		{
			if (right_key_pressed) && (instance_exists(obj_wm_a_s4))
			{
				active = false;
				delay = 0;
				obj_wm_a_s4.active = 1;
				obj_wm_a_s4.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_sc))
			{
				active = false;
				delay = 0;
				obj_wm_a_sc.active = 1;
				obj_wm_a_sc.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (left_key_pressed) && (instance_exists(obj_wm_a_s3))
			{
				active = false;
				delay = 0;
				obj_wm_a_s3.active = 1;
				obj_wm_a_s3.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_mainsector))
			{
				active = false;
				delay = 0;
				obj_wm_a_mainsector.active = 1;
				obj_wm_a_mainsector.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 6;
				global.wmX = 0;
				global.wmY = 0;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 0) && (tileposy = 0) && (sectortile = 6)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.sc)
		{
			if (right_key_pressed) && (instance_exists(obj_wm_a_s4))
			{
				active = false;
				delay = 0;
				obj_wm_a_s4.active = 1;
				obj_wm_a_s4.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (up_key_pressed) && (instance_exists(obj_wm_a_ms))
			{
				active = false;
				delay = 0;
				obj_wm_a_ms.active = 1;
				obj_wm_a_ms.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (left_key_pressed) && (instance_exists(obj_wm_a_s3))
			{
				active = false;
				delay = 0;
				obj_wm_a_s3.active = 1;
				obj_wm_a_s3.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_v))
			{
				active = false;
				delay = 0;
				obj_wm_a_v.active = 1;
				obj_wm_a_v.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 7;
				global.wmX = 0;
				global.wmY = 0;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 0) && (tileposy = 0) && (sectortile = 7)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
		else if (sector = WMdiscovered.ms)
		{
			if (right_key_pressed) && (instance_exists(obj_wm_a_s4))
			{
				active = false;
				delay = 0;
				obj_wm_a_s4.active = 1;
				obj_wm_a_s4.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (left_key_pressed) && (instance_exists(obj_wm_a_s3))
			{
				active = false;
				delay = 0;
				obj_wm_a_s3.active = 1;
				obj_wm_a_s3.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			else if (down_key_pressed) && (instance_exists(obj_wm_a_sc))
			{
				active = false;
				delay = 0;
				obj_wm_a_sc.active = 1;
				obj_wm_a_sc.FadeNow = 0.8
				
				audio_play_sound(snd_menu_move,1000,false,global.sfx_volume);
				exit;
			}
			
			if (jump_pressed)
			{
				active = false
				delay = 0
				
				global.sector_active = 8;
				global.wmX = 0;
				global.wmY = 0;
				
				obj_pausescrn1.new1 = 0;
				global.pause_worldmap = 0;
				global.pause_map = 1;
				
				audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume);
				
				with(obj_maptile_tile)
				{
					if (tileposx = 0) && (tileposy = 0) && (sectortile = 8)
					{
						x = __view_get( e__VW.XView, 0 ) + (160+(tileposx*10)-(global.mapgrid_playerx*10));
						y = __view_get( e__VW.YView, 0 ) + (90+(tileposy*10)-(global.mapgrid_playery*10));
						var pausescrn1CentreX = obj_pausescrn1.x+160
						var pausescrn1CentreY = obj_pausescrn1.y+90
						global.xleft = 0;
						global.yup = 0;
						
						global.wmX = pausescrn1CentreX-x;
						global.wmY = pausescrn1CentreY-y;
					}
				}
				
				exit;
			}
		}
	
	}
	
	if (active = true)
	{
		if (FadeNow > 0 )
		{ 
			FadeNow -= 0.01; 
		}
		else if (FadeNow <= 0)
		{
			FadeNow = 0.8;
		}	
	}
	else if (active = false)
	{
		FadeNow = 0;
	}
}