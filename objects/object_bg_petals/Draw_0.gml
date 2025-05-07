if (global.corrupted <= 0)
{
	draw_background_tiled(bg_darkpetals, __view_get( e__VW.XView, 0 )/1.5, __view_get( e__VW.YView, 0 )/1.5);
}
else if (global.corrupted > 0)
{
	draw_background_tiled(bg_greensewer, __view_get( e__VW.XView, 0 )/1.1, __view_get( e__VW.YView, 0 )/1.1);
}