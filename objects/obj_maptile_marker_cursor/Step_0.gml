/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()

if (jump_pressed) && (!place_meeting(x,y,obj_maptile_marker)) && ((instance_number(obj_maptile_marker)) < 99)
{
	markerN++;
	
	if (instance_exists(obj_pausescrn1))
	{
		global.marker_inst[markerN] = instance_create_depth(x,y,obj_pausescrn1.depth+1,obj_maptile_marker);
	}
	else global.marker_inst[markerN] = instance_create_layer(x,y,layer_get_id("Inst_healthui_mapborder"),obj_maptile_marker);
	
	with(global.marker_inst[markerN])
	{
		originX = global.xleft;
		originY = global.yup;
		origionalX = global.mapgrid_playerx;
		origionalY = global.mapgrid_playery;
		
		global.marker_N += 1;
		markerN = global.marker_N;
		global.marker_no[markerN] = 1;
		global.marker_coordsX[markerN] = originX;
		global.marker_coordsY[markerN] = originY;
		global.marker_coordsX2[markerN] = origionalX;
		global.marker_coordsY2[markerN] = origionalY;
		global.marker_sectortile[markerN] = global.sector_active;
		sectortile = global.sector_active
	}
}
else if (jump_pressed) && (instance_place(x,y,obj_maptile_marker))
{
	//get the map markers markerN variable value
	markerN = (instance_place(x,y,obj_maptile_marker)).markerN;
	
	instance_destroy(instance_place(x,y,obj_maptile_marker));
	
	global.marker_no[markerN] = 0;
	global.marker_coordsX[markerN] = 0;
	global.marker_coordsY[markerN] = 0;
	global.marker_coordsX2[markerN] = 0;
	global.marker_coordsY2[markerN] = 0;
	global.marker_sectortile[markerN] = -1;
	global.marker_inst[markerN] = 0;

	
	//idr what this does
	markerN = global.marker_N;
	
	//lower global marker count by 1
	if (global.marker_N > 0)
	{
		global.marker_N --;
		markerN--;
	}
}
else if (ability_pressed) && (global.marker_N > 0)
{
	instance_destroy(global.marker_inst[global.marker_N])
	if (global.marker_N > 0)
		{
		global.marker_N --;
		markerN--;
		}
}