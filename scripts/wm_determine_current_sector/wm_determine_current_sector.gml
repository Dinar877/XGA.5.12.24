// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wm_determine_current_sector(){
	
	if (sector = global.sector_active)
	{
		active = true;	
		FadeNow = 0.8
	}
	
	delay = 0;
	
	
	//if not discovered area, delete
	if (global.wm_found[sector] == false)
	{
		instance_destroy()	
	}

}