/// @description Insert description here
// You can write your code in this editor
/*
if ds_exists(global.ds_grid_pathfinding,ds_type_grid)
{
	for (var i = 0; i < ds_grid_width(global.ds_grid_pathfinding);i++)
	{
		for (var j = 0; j < ds_grid_height(global.ds_grid_pathfinding);j++)
		{
			var value = ds_grid_get(global.ds_grid_pathfinding,i,j)
			draw_text_transformed(i*cell_width+8,j*cell_height+8,string(value),1,1,0)
		}	
	}
}