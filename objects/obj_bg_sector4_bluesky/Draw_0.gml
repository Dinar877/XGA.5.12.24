/// @description  Draw the background
draw_background_tiled(bg_one, __view_get( e__VW.XView, 0 )/1.1, __view_get( e__VW.YView, 0 )/1.1);

if (global.corrupted <= 0)
{
	draw_background_tiled(spr_s4_bluesky_bg, __view_get( e__VW.XView, 0 )/1.2, (__view_get( e__VW.YView, 0))/1.2);
}
else if (global.corrupted > 0)
{ 
	draw_background_tiled(spr_s4_bluesky_dark_bg, __view_get( e__VW.XView, 0 )/1.2, (__view_get( e__VW.YView, 0))/1.2);
}

//draw_background(tiles_parallax,view_xview[0]/4, view_yview[0]/4);

