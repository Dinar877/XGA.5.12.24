// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darkeater_hurt(){
	
	//var's
	snd = -1
	instbullet0 = 0
	
	//speed var's
	hspd = 0
	vspd = 7
	
	//adding speed's
	if (!place_meeting(x+(hspd),y+(vspd),obj_block))
	&& (!place_meeting(x+(hspd),y+(vspd),obj_slope1_left)) && (!place_meeting(x+(hspd),y+(vspd),obj_slope1_right))
	&& (!place_meeting(x+(hspd),y+(vspd),obj_newslope_left)) && (!place_meeting(x+(hspd),y+(vspd),obj_newslope_right))
	{
		y += vspd;
		x += hspd;
	}
	else if (!place_meeting(x,y+(vspd),obj_block))
	&& (!place_meeting(x,y+(vspd),obj_slope1_left)) && (!place_meeting(x,y+(vspd),obj_slope1_right))
	&& (!place_meeting(x,y+(vspd),obj_newslope_left)) && (!place_meeting(x,y+(vspd),obj_newslope_right))
	{
		y += vspd;
	}
	else if (!place_meeting(x+(hspd),y,obj_block))
	&& (!place_meeting(x+(hspd),y,obj_slope1_left)) && (!place_meeting(x+(hspd),y,obj_slope1_right))
	&& (!place_meeting(x+(hspd),y,obj_newslope_left)) && (!place_meeting(x+(hspd),y,obj_newslope_right))
	{
		x += hspd;
	}

	if (position_meeting(x,id.bbox_top-1,obj_block))
	{
		vspd = 0
		x = floor(x);
	}
	else
	{
		y = floor(y);
		x = floor(x);	
	}
	
	//landing
	if ((place_meeting(x,y+1,obj_block)) or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
	or (place_meeting(x,y+2,obj_newslope_left)) or (place_meeting(x,y+2,obj_newslope_right)))
	{
		vspd = 0
		grav = 0
		jump_stopper0 = 0
		jump_stopper1 = 0
	}
	
	with(obj_darkeater_sprites)
	{
		if (facing > 0) && (sprite_index != spr_darkeater_hurt_right)
		{
			sprite_index = spr_darkeater_hurt_right	
			image_index = 0
		}
		else if (facing > 0) && (sprite_index == spr_darkeater_hurt_right) && (floor(image_index) >= image_number-1)
		{
			sprite_index = spr_darkeater_idle_right
			with(other)
			{
				State_machine_switch_state(darkeater_idle)
				exit;
			}
		}
	
		if (facing < 0) && (sprite_index != spr_darkeater_hurt_left)
		{
			sprite_index = spr_darkeater_hurt_left	
			image_index = 0
		}
		else if (facing < 0) && (sprite_index == spr_darkeater_hurt_left) && (floor(image_index) >= image_number-1)
		{
			sprite_index = spr_darkeater_idle_left
			with(other)
			{
				State_machine_switch_state(darkeater_idle)
				exit;
			}
		}
	}

}