/// @description Insert description here
// You can write your code in this editor
if (gotsprite != 0) && (discovered = 1) && ((global.pause_map = 1) or (global.navigation = 1)) && (global.pause_exit = 0) && (sectortile = global.sector_active)
{
	x = __view_get( e__VW.XView, 0 ) + floor(160+(tileposx*10)-(global.mapgrid_playerx*10))+global.xleft;
	y = __view_get( e__VW.YView, 0 ) + floor(90+(tileposy*10)-(global.mapgrid_playery*10))+global.yup;

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

if (gotsprite != 0) && (discovered = 1) && ((global.pause_map = 1) or (global.navigation = 1)) && (global.pause_exit = 0) && (sectortile = global.sector_active)
{
	x = __view_get( e__VW.XView, 0 ) + floor(160+(tileposx*10)-(global.mapgrid_playerx*10))+global.xleft;
	y = __view_get( e__VW.YView, 0 ) + floor(90+(tileposy*10)-(global.mapgrid_playery*10))+global.yup;

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
