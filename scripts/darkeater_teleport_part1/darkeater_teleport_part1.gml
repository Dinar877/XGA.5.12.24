// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darkeater_teleport_part1(){
	
	state1 = darkeater_teleport_part1;
	global.darkeater_active = 1;
	
	hspd = 0;
	vspd = 0;
	
	with(obj_darkeater_sprites)
	{
		if (image_index >= image_number-1)
		{
			if (other.facing = 1)
			{
				image_index = 0;
				sprite_index = spr_darkeater_teleport_empty;
			}
			else if (other.facing = -1)
			{
				image_index = 0;
				sprite_index = spr_darkeater_teleport_empty;
			}
			
			other.x = obj_player.x;
			other.y = obj_player.y;
		}
	}
	
	if (teleport_timer < 1) && (obj_darkeater_sprites.image_index == 0)
	{
		teleport_timer += (1/180);	
	}
	
	if (teleport_timer >= 1)
	{
		teleport_timer = 0;
		
		with(obj_darkeater_sprites)
		{
			if (image_index >= image_number-1)
			{
				if (other.facing = 1)
				{
					image_index = 0;
					sprite_index = spr_darkeater_teleport_right_part2;
				}
				else if (other.facing = -1)
				{
					image_index = 0;
					sprite_index = spr_darkeater_teleport_left_part2;
				}
			}
		}
				
		State_machine_switch_state(darkeater_teleport_part2);
		exit	
	}
}