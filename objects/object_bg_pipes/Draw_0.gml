if (global.corrupted <= 0)
{
	draw_background_tiled(bg_pipes2, __view_get( e__VW.XView, 0 )/1, __view_get( e__VW.YView, 0 )/1);
	draw_background_tiled(bg_pipes1, __view_get( e__VW.XView, 0 )/1.3, __view_get( e__VW.YView, 0 )/1.3);
	draw_background_tiled(bg_pipes, __view_get( e__VW.XView, 0 )/2, __view_get( e__VW.YView, 0 )/2);
}
else if (global.corrupted > 0)
{
	draw_background_tiled(bg_pipes2_cor, __view_get( e__VW.XView, 0 )/1, __view_get( e__VW.YView, 0 )/1);
	draw_background_tiled(bg_pipes1_cor, __view_get( e__VW.XView, 0 )/1.3, __view_get( e__VW.YView, 0 )/1.3);
	draw_background_tiled(bg_pipes_cor, __view_get( e__VW.XView, 0 )/2, __view_get( e__VW.YView, 0 )/2);
}