/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	exit;	
}


enemy_hurt_player_code(4);

if (sprite_index = spr_xga3_vomiting_pool_begin) && (image_index >= image_number-1)
{
	sprite_index = spr_xga3_vomiting_pool_active;
}

//ending
if (sprite_index = spr_xga3_vomiting_pool_ending) && (image_index >= image_number-1)
{
	instance_destroy();	
	exit;
}

//move splash object as animation plays
if (instance_exists(obj_xga3_vomit_splash))
{
	if (sprite_index = spr_xga3_vomiting_pool_begin)
	{
		if ((image_index) == 0)
		{
			obj_xga3_vomit_splash.y = y-1+65;
		}
		else if ((image_index) == 1)
		{
			obj_xga3_vomit_splash.y = y-3+65;
		}
		else if ((image_index) == 2)
		{
			obj_xga3_vomit_splash.y = y-15+65;
		}
		else if ((image_index) == 3)
		{
			obj_xga3_vomit_splash.y = y-57+65;
		}
		else if ((image_index) == 4)
		{
			obj_xga3_vomit_splash.y = y-59+65;
		}
	}
	else if (sprite_index = spr_xga3_vomiting_pool_active)
	{
		obj_xga3_vomit_splash.y = y-59+65;
	}
	else if (sprite_index = spr_xga3_vomiting_pool_ending)
	{
		if ((image_index) == 0)
		{
			obj_xga3_vomit_splash.y = y-59+65;
		}
		else if ((image_index) == 1)
		{
			obj_xga3_vomit_splash.y = y-57+65;
		}
		else if ((image_index) == 2)
		{
			obj_xga3_vomit_splash.y = y-15+65;
		}
		else if ((image_index) == 3)
		{
			obj_xga3_vomit_splash.y = y-3+65;
		}
		else if ((image_index) == 4)
		{
			obj_xga3_vomit_splash.y = y-1+65;
		}
	}
}