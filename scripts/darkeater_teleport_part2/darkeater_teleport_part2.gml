// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darkeater_teleport_part2(){
	
	state1 = darkeater_teleport_part2;
	global.darkeater_active = 1;
	
	hspd = 0;
	vspd = 0;
	
	
	with(obj_darkeater_sprites)
	{
		image_speed = 1;
		
		if (image_index >= image_number-1)
		{
			if (other.facing = 1)
			{
				image_index = 0;
				sprite_index = spr_darkeater_idle_right;
			}
			else if (other.facing = -1)
			{
				image_index = 0;
				sprite_index = spr_darkeater_idle_left;
			}
			
			with(obj_darkeater_hitbox)
			{
				attack_state = 0;
				
				if (onground)
				{
					State_machine_switch_state(darkeater_idle);
				}
				else State_machine_switch_state(darkeater_fall_idle);
				
				exit
			}
		}
	}
}