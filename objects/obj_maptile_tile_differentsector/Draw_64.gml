 /// @description Insert description here
// You can write your code in this editor

//if the maptile has a sprite (given from the room square(obj_mapchecker1)) and if it's on the blue bit under the map border hud,
//then draw it. Draw it fading white if in the middle of the minimap hud
if (gotsprite != 0) && (discovered = 1) && (global.pause_map = 0)// && (global.pause_transition = 0)
&& (global.pause = 0)
{
	x = floor(290+(tileposx*10)-(global.mapgrid_playerx*10))-3;
	y = floor(10+(tileposy*10)-(global.mapgrid_playery*10))+3;
	if (place_meeting(x,y,obj_mapborder_underside))
	{
		#region
		if (!surface_exists(surfacemap1))
			{
				surfacemap1 = surface_create(300,300);	
			}
			if (!surface_exists(surface2map1))
			{
				surface2map1 = surface_create(300,300);	
			}
			if (!surface_exists(surface3map1))
			{
				surface3map1 = surface_create(300,300);	
			}
	
			surface_set_target(surface3map1);
	
			draw_clear_alpha(c_white,0);
			draw_sprite(spr_mapborder_underside1, 0, 0, 0);
	
			shader_reset();
			surface_reset_target();
	
			surface_set_target(surfacemap1);
			draw_clear_alpha(c_black, 0);
			draw_sprite(spr_mapborder_underside1, 0, 0, 0);
			surface_reset_target();
		
			surface_set_target(surface2map1);
			draw_clear_alpha(c_black, 1);
			gpu_set_blendmode(bm_subtract);
			draw_surface(surfacemap1,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target()
		
			surface_set_target(surfacemap1);
			draw_clear_alpha(c_white, 0);
			draw_sprite(sprite_index, image_index, 20+(tileposx*10)-(global.mapgrid_playerx*10), 0+(tileposy*10)-(global.mapgrid_playery*10));
			gpu_set_blendmode(bm_subtract);
			draw_surface(surface2map1,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
	
			if (surfacemap1 != -1)
			{
				if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
				{
					shader_set(shd_fade_whitegreen);
					shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
					draw_surface_ext(surfacemap1,270,10,1,1,0,c_white,1)
					timerfade = 1;
					shader_reset();
				}
				else 
				{
				draw_surface_ext(surfacemap1,270,10,1,1,0,c_white,1)
				timerfade = 0;
				}
			}
	
			surface_free(surfacemap1);
			surface_free(surface2map1);
			surface_free(surface3map1);
		#endregion
	}
}




///if in a 1x1 room
if (gotsprite != 0) && (discovered = 1) && (global.pause_map = 0)// && (global.pause_transition = 0)
&& (global.pause = 0)
//&& (global.pause_exit = 0)
{
	x = floor(290+(tileposx*10)-(global.mapgrid_playerx*10))-3;
	y = floor(10+(tileposy*10)-(global.mapgrid_playery*10))+3;
	if (place_meeting(x,y,obj_mapborder_underside))
	{
		#region
		if (!surface_exists(surfacemap1))
			{
				surfacemap1 = surface_create(300,300);	
			}
			if (!surface_exists(surface2map1))
			{
				surface2map1 = surface_create(300,300);	
			}
			if (!surface_exists(surface3map1))
			{
				surface3map1 = surface_create(300,300);	
			}
	
			surface_set_target(surface3map1);
	
			draw_clear_alpha(c_white,0);
			draw_sprite(spr_mapborder_underside1, 0, 0, 0);
	
			shader_reset();
			surface_reset_target();
	
			surface_set_target(surfacemap1);
			draw_clear_alpha(c_black, 0);
			draw_sprite(spr_mapborder_underside1, 0, 0, 0);
			surface_reset_target();
		
			surface_set_target(surface2map1);
			draw_clear_alpha(c_black, 1);
			gpu_set_blendmode(bm_subtract);
			draw_surface(surfacemap1,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target()
		
			surface_set_target(surfacemap1);
			draw_clear_alpha(c_white, 0);
			draw_sprite(sprite_index, image_index, 30-(global.mapgrid_playerx*10), 0-(global.mapgrid_playery*10));
			gpu_set_blendmode(bm_subtract);
			draw_surface(surface2map1,0,0);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
	
			if (surfacemap1 != -1)
			{
				if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
				{
					shader_set(shd_fade_whitegreen);
					shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
					draw_surface_ext(surfacemap1,270,0,1,1,0,c_white,1)
					timerfade = 1;
					shader_reset();
				}
				else 
				{
				draw_surface_ext(surfacemap1,270,0,1,1,0,c_white,1)
				timerfade = 0;
				}
			}
	
			surface_free(surfacemap1);
			surface_free(surface2map1);
			surface_free(surface3map1);
		#endregion
	}
}




