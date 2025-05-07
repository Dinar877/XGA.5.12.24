// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function map_disable_hazardicon(){
	
	if (instance_exists(obj_maptile_tile))
	{
		with(obj_maptile_tile)
		{
			if (hazardID_redblockerID = other.redblockerID)
			{
				hazardID = 0
				hazardID2 = 0
				hazardID_redblockerID = 0
			}
		}
	}

}