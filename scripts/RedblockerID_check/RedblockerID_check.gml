// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RedblockerID_check(){
	//using object's instance id
	if (variable_instance_exists(self, "redblockerID"))
	{
		if (redblockerID <= 0)
		{
			RedblockerID()	
		}
	}
}