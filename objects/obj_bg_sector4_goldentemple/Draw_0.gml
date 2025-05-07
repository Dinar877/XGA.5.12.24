if (global.corrupted <= 0)
{
	draw_background_tiled(spr_s4_goldentemple_bg3, __view_get( e__VW.XView, 0 )/1.1, __view_get( e__VW.YView, 0 )/1.1);
	draw_background_tiled(spr_s4_goldentemple_bg2, __view_get( e__VW.XView, 0 )/1.3, __view_get( e__VW.YView, 0 )/1.3);
	draw_background_tiled(spr_s4_goldentemple_bg1, __view_get( e__VW.XView, 0 )/2, __view_get( e__VW.YView, 0 )/2);
}
else if (global.corrupted > 0)
{
	draw_background_tiled(spr_s4_goldentemple_bg3_cor, __view_get( e__VW.XView, 0 )/1.1, __view_get( e__VW.YView, 0 )/1.1);
	draw_background_tiled(spr_s4_goldentemple_bg2_cor, __view_get( e__VW.XView, 0 )/1.3, __view_get( e__VW.YView, 0 )/1.3);
	draw_background_tiled(spr_s4_goldentemple_bg1_cor, __view_get( e__VW.XView, 0 )/2, __view_get( e__VW.YView, 0 )/2);
}