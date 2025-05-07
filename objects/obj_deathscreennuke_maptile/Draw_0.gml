/// @description Insert description here
// You can write your code in this editor
if ((global.pause_map = 1) or (global.navigation = 1)) && (global.pause_exit = 0) && (sectortile == global.sector_active)
{
	x = __view_get( e__VW.XView, 0 ) + floor(160+(tileposx*10)-(global.mapgrid_playerx*10))+global.xleft+5;
	y = __view_get( e__VW.YView, 0 ) + floor(90+(tileposy*10)-(global.mapgrid_playery*10))+global.yup+5;

	draw_self();
}