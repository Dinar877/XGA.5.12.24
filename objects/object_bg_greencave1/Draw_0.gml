if (global.corrupted <= 0)
{
	draw_background_tiled(bg_greencave1, __view_get( e__VW.XView, 0 )/2, __view_get( e__VW.YView, 0 )/2);
}
else draw_background_tiled(bg_greencave1_corrupted, __view_get( e__VW.XView, 0 )/2, __view_get( e__VW.YView, 0 )/2);