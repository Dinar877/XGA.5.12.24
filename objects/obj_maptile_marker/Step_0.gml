/// @description Insert description here
// You can write your code in this editor
var adder1 = global.xleft; 
var adder2 = global.yup;


if (sectortile == global.sector_active) 
&& ((global.pause_map = 1) or (global.navigation = 1) or ((global.pause_exit > 0) && (global.pause_map > 0) && (global.stopper_2ndscrnshot <= 0)))
{
	//pause screen
	x = __view_get( e__VW.XView, 0 )+160+(origionalX*10)-(global.mapgrid_playerx*10)+global.xleft-originX
	y = __view_get( e__VW.YView, 0 )+90+(origionalY*10)-(global.mapgrid_playery*10)+global.yup-originY
}
else if (sectortile == global.sector_active) 
&& ((global.pause_map = 0) && (global.navigation = 0) && (global.pause_exit == 0) && (global.pause_map == 0) && (global.stopper_2ndscrnshot == 0))
{
	//gameplay
	x = (291+13+(origionalX*10)-(global.mapgrid_playerx*10))-3-originX;
	y = (0+7+(origionalY*10)-(global.mapgrid_playery*10))+3-originY;	
}