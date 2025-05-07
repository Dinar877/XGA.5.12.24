/// @description  Draw the background
if (global.corrupted <= 0)
{
	draw_background_tiled(spr_S4_bg_lockdown, __view_get( e__VW.XView, 0 )/1.2, __view_get( e__VW.YView, 0 )/1.2);
}
else if (global.corrupted > 0)
{
	draw_background_tiled(spr_S4_bg_lockdown_cor, __view_get( e__VW.XView, 0 )/1.2, __view_get( e__VW.YView, 0 )/1.2);
}

