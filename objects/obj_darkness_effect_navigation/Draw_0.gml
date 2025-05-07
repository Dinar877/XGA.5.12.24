/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(light_surface))
{
	light_surface = surface_create(__view_get(e__VW.WView,0), __view_get(e__VW.HView,0));
}

if (surface_exists(light_surface))
{
	surface_set_target(light_surface);
	
	if  (!instance_exists(obj_scrn_roomtransition))
	{
		draw_clear_alpha(c_black,0.8);
	}
	else if (instance_exists(obj_scrn_roomtransition)) && (global.stopper_2ndscrnshot != 0)
	{
	draw_clear_alpha(c_black,0.8);
	}
	else if (instance_exists(obj_scrn_roomtransition)) && (global.stopper_2ndscrnshot == 0)
	{
	draw_clear_alpha(c_black,0.8);
	}
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(spr_navigation_scrn,0,__view_get(e__VW.WView,0)+90, __view_get(e__VW.HView,0)+22,1,1,0,c_white,1);

	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface(light_surface, __view_get(e__VW.WView,0), __view_get(e__VW.HView,0))
	surface_free(light_surface)
}