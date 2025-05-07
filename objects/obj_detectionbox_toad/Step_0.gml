if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


/// @description Insert description here
// You can write your code in this editor
if (instance_exists(inst))
{
	x = inst.x;
	y = inst.y;

	if (place_meeting(x,y,obj_player))
	{
			with(inst)
			{
					if (prep_now = 0) && (knockback_now = 0) && (run_now = 0)
					&& !((place_meeting(x,y,obj_player)) && (place_meeting(x,y,obj_hitbox_toad)))
					&& (global.invisibility == 0) && (!place_meeting(x+(facing),y,obj_block))
					&& ((place_meeting(x+(facing*8),y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_left))
					or (place_meeting(x,y+1,obj_slope1_right)))
					{
						prep_now = 1;
						knockback_now = 0;
						with(inst)
						{
							knockback_now = 0;
							prep_now = 1;
						}	
					}
					else if ((!place_meeting(x+hspd,y+1,obj_block)) && (!place_meeting(x,y+1,obj_slope1_left))
					&& (!place_meeting(x,y+1,obj_slope1_right)))
					{
						hspd = 0;
						run_now = 0;
						prep_now = 0;
					}
			}
			with(inst)
			{
				with(inst)
				{
				if (set_direction = 1)
				{
						knockback_now = 0;
						run_now = 0;
						prep_now = 0;
						with(inst2)
						{
							knockback_now = 0;
							run_now = 0;
							prep_now = 0;
						}
				}
				}
			}
		}
}