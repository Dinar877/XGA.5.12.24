// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Item_upgradeID(){
	
	//upgradeID
	if (upgradeID <= 0)
	{
		for (var n = 2; n < 999; n++)
		{
			//aka 'n' never == one of the IDs for the main upgrades
			if (n != 1) && (n != 950) && (n != 951) && (n != 952) && (n != 953) && (n != 954) && (n != 955)
			&& (n != 956) && (n != 957) && (n != 958) && (n != 959) && (n != 960)
			&& (n != 961) && (n != 962) && (n != 963) && (n != 964) && (n != 965) && (n != 966) && (n != 967) && (n != 968) 
			&& (n != 969) && (n != 970) && (n != 971) && (n != 972)
			{
				if (global.upgradecollected[n] <= 0) && (global.upgradetrue[n] <= 0)
				{
					global.upgradetrue[n] = id
					upgradeID = n
				
					break;
				}
				else if (global.upgradecollected[n] <= 0) && (global.upgradetrue[n] > 0) && (global.upgradetrue[n] == id)
				{
					upgradeID = n
				
					break;
				}
				else if (global.upgradecollected[n] > 0) && (global.upgradetrue[n] > 0) && (global.upgradetrue[n] == id)
				{
					instance_destroy()
					exit
				}
			}
		}
	}
}