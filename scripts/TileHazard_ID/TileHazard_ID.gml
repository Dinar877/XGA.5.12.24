// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TileHazard_ID(){
	
	//upgradeID
	if (redblockerID <= 0)
	{
		for (var n = 2; n < 999; n++)
		{
			if (global.tile_hazard_redblockerID[n] <= 0) && (global.tile_hazard[n] <= 0)
				{
					global.tile_hazard[n] = id
					redblockerID = n
				
					break;
				}
			else if (global.tile_hazard_redblockerID[n] <= 0) && (global.tile_hazard[n] > 0) && (global.tile_hazard[n] == id)
				{
					redblockerID = n
				
					break;
				}
			else if (global.tile_hazard_redblockerID[n] > 0) && (global.tile_hazard[n] > 0) && (global.tile_hazard[n] == id)
				{
					redblockerID = n
					//instance_destroy()
					exit
				}
		}
	}
}