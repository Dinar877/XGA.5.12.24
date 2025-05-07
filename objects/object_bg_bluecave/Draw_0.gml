if (global.corrupted > 0)
{
	draw_background_tiled(bg_bluecave, __view_get( e__VW.XView, 0 )/3, __view_get( e__VW.YView, 0 )/3);
}
else if (global.corrupted <= 0)
{
	draw_background_tiled(bg_greencave1, __view_get( e__VW.XView, 0 )/3, __view_get( e__VW.YView, 0 )/3);
}