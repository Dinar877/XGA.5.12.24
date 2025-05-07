// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darkeater_wait(){
	
	var inst_circle_detected = collision_rectangle(floor(x)+(70*facing),floor(y)-50,floor(x),floor(y)+5,obj_player,false,true)
	
	if (inst_circle_detected > -1) or (global.darkeater_active = 1)
	{
		global.darkeater_active = 1
		State_machine_switch_state(darkeater_idle)
		exit
	}

}