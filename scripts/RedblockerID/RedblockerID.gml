// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RedblockerID(){
	//upgradeID
	if (redblockerID <= 0)
	{
		for (var n = 2; n < 999; n++)
		{
			//exclusions
			if (n != specialRedblockerIDs.mainsectorBridge) 
			&& (n != specialRedblockerIDs.mainsectorYellowDoor) 
			&& (n != specialRedblockerIDs.mainsectorXGA_1_0_plug) //Since script randomizes IDs per playthrough, sometimes player would get trapped when loading their old save files into an updated version of the game (at least this is my current theory why the bug happens occasionally). 
			&& (n != specialRedblockerIDs.sector3BOXautohack) 
			&& (n != specialRedblockerIDs.sector3BOXspikewall) 
			&& (n != specialRedblockerIDs.sector1FalseWall_1) 
			&& (n != specialRedblockerIDs.sector1FalseWall_2) 
			{
				if (global.doors_redblocker[n] <= 0) && (global.doors_true[n] <= 0) 
				//doors_true records instance id, doors_redblocker records whether their switch is turned on or off
				{
					global.doors_true[n] = id //does not change ever, even exiting the room or starting a new save file
					redblockerID = n
				
					break;
				}
				else if (global.doors_redblocker[n] <= 0) && (global.doors_true[n] > 0) && (global.doors_true[n] == id)
				{
					redblockerID = n
				
					break;
				}
				else if (global.doors_redblocker[n] > 0) && (global.doors_true[n] > 0) && (global.doors_true[n] == id)
				{
					redblockerID = n
					//instance_destroy()
					exit
				}
			}
		}
	}
}