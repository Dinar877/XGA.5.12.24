///converts the room into a grid of collision blocks for the enemy
var hcells = room_width/cell_width
var vcells = room_height/cell_height

//creates the  new1 grid for the room
global.ds_grid_pathfinding = ds_grid_create(hcells,vcells)

//loop through entire room and map out all free space not counting the collision blocks
for (var i = 0; i < hcells; i++)
{
	for (var j = 0; j < vcells; j++)
	{
		if (place_meeting(i*cell_height,j*cell_width,obj_block))
		or (place_meeting(i*cell_height,j*cell_width,obj_slope1_left))
		or (place_meeting(i*cell_height,j*cell_width,obj_slope1_right))
		{
			ds_grid_add(global.ds_grid_pathfinding,i,j,-2)
		}
		else
		{
			ds_grid_add(global.ds_grid_pathfinding,i,j,-1)
		}
	}
}