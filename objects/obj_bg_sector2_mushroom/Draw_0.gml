if (global.corrupted == false)
{
	draw_background_tiled(spr_mushroom_bg, __view_get( e__VW.XView, 0 )/1.3, __view_get( e__VW.YView, 0 )/1.3);
}
else if (global.corrupted == true)
{
	draw_background_tiled(bg_greensewer, __view_get( e__VW.XView, 0 )/1.3, __view_get( e__VW.YView, 0 )/1.3);
}


