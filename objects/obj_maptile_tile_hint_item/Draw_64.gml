 /// @description Insert description here
// You can write your code in this editor

//if the maptile has a sprite (given from the room square(obj_mapchecker1)) and if it's on the blue bit under the map border hud,
//then draw it. Draw it fading white if in the middle of the minimap hud
if (gotsprite != 0) && (discovered = 1) && (global.pause_map = 0)// && (global.pause_transition = 0)
&& (global.pause = 0)
//&& (global.pause_exit = 0)
{
	x = floor(16+(tileposx*10)-(global.mapgrid_playerx*10))-3;
	y = floor(154+(tileposy*10)-(global.mapgrid_playery*10))+3;
	if (place_meeting(x,y,obj_mapborder_underside))
	{
		if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
		{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
		draw_self();
		timerfade = 1;
		shader_reset();
		}
		else 
		{
		draw_self();
		timerfade = 0;
		}
	}
}




///if in a 1x1 room
if (gotsprite != 0) && (discovered = 1) && (global.pause_map = 0)// && (global.pause_transition = 0)
&& (global.pause = 0)
//&& (global.pause_exit = 0)
{
	x = floor(16+(tileposx*10)-(global.mapgrid_playerx*10))-3;
	y = floor(154+(tileposy*10)-(global.mapgrid_playery*10))+3;
	if (place_meeting(x,y,obj_mapborder_underside))
	{
		if (((tileposx*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy*10)-(global.mapgrid_playery*10))) = 0)
		{
		shader_set(shd_fade_whitegreen);
		shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
		draw_self();
		timerfade = 1;
		shader_reset();
		}
		else 
		{
		draw_self();
		timerfade = 0;
		}
	}
}




