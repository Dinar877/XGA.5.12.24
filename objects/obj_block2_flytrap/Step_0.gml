/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y-1,obj_player)) && (switch1 = 0) && (global.invisibility <= 0)
{
	switch1 = 1
	with(inst_flytrap)
	{
		eating = 1	
	}
}