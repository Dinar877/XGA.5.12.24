/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (delay > 0) && (global.pause_status)
{
	delay -= 0.05;	
}
else if (delay <= 0)
{
	if (global.pause_status) && (!L2) && (!R2)
	{
		image_index = 3;	
	}
	else if (global.pause_status) && (L2) && (!R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_status = 0;
		global.pause_map = 1;
		
		
		if (instance_exists(obj_ScrewJump))
		{
			with(obj_ScrewJump)
			{
			instance_destroy();
			}
		}
		if (instance_exists(obj_InfinityBOOTS))
		{
			with(obj_InfinityBOOTS)
			{
			instance_destroy();
			}
		}
		if (instance_exists(obj_TOXIC_SUIT))
		{
			with(obj_TOXIC_SUIT)
			{
			instance_destroy();
			}
		}
		//sprite_delete(global.font_spr);
		//font_delete(global.font_gray1);
		instance_create_depth(__view_get( e__VW.XView, 0 )+134,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_map);
		font_delete(global.font_gray1);
		instance_destroy();
	}
	else if (global.pause_status) && (!L2) && (R2)
	{
		image_speed = 0;
		image_index = 0;
		delay = 1;
		global.pause_status = 0;
		global.pause_options = 1;
		
		
		if (instance_exists(obj_ScrewJump))
		{
			with(obj_ScrewJump)
			{
			instance_destroy();
			}
		}
		if (instance_exists(obj_InfinityBOOTS))
		{
			with(obj_InfinityBOOTS)
			{
			instance_destroy();
			}
		}
		if (instance_exists(obj_TOXIC_SUIT))
		{
			with(obj_TOXIC_SUIT)
			{
			instance_destroy();
			}
		}
		//sprite_delete(global.font_spr);
		//font_delete(global.font_gray1);
		instance_create_depth(__view_get( e__VW.XView, 0 )+162,__view_get( e__VW.YView, 0 )+5,obj_maptile_tile.depth-2,obj_pause_options);
		instance_destroy();
	}
}

if (global.pause_exit == 1)
{
	//button remapping-NOT ACTIVE!!!
		if (instance_exists(obj_TOXIC_SUIT))
		{
			with(obj_TOXIC_SUIT)
			{
				instance_destroy();
			}
					//left
			if (instance_exists(obj_InfinityBOOTS))
			{
				with(obj_InfinityBOOTS)
				{
					instance_destroy();
				}
			}
			//right
			if (instance_exists(obj_Chargebeam))
			{
				with(obj_Chargebeam)
				{
					instance_destroy();
				}
			}
			//up
			if (instance_exists(obj_SpreadBeam))
			{
				with(obj_SpreadBeam)
				{
					instance_destroy();
				}
			}
			//down
			if (instance_exists(obj_ScrewJump))
			{
				with(obj_ScrewJump)
				{
					instance_destroy();
				}
			}
			
		}
		
		font_delete(global.font_gray1);
		
		
		instance_destroy();	
}