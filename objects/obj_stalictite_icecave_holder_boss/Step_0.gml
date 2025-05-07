/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x,y,obj_stalictite_icecave_spike1)) && (!place_meeting(x,y,obj_stalictite_icecave_spike_boss)) && (timer <= 0)
{
	instance_create_layer(x+4,y+17,layer_get_id("Inst_level_0" ),obj_stalictite_icecave_spike_boss)	
	timer = 1
}

if (timer > 0) &&  (!place_meeting(x,y,obj_stalictite_icecave_spike1)) && (!place_meeting(x,y,obj_stalictite_icecave_spike_boss))
{
	timer -= 0.005;	
}