// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hellcannon_shoot(){
	
	if ((sprite_index = spr_hellcannon_shoot_left) or (sprite_index = spr_hellcannon_shoot_right))
	&& (floor(image_index) == 11)
	&& (grenadeSwitch == 0)
	{
		grenadeSwitch = 1;
		
		var sndgrenade = audio_play_sound(snd_hellcannon_spit,1000,false,global.sfx_volume);
		audio_sound_gain(sndgrenade,0,1000);
		
		var instgrenade =instance_create_depth(x,y-20,depth-1,obj_hellcannon_grenade);
		
		if (facing= -1)
		{
			with(instgrenade)
			{
				direction1 = -1;	
			}
		}
		else if (facing= 1)
		{
			with(instgrenade)
			{
				direction1 = 1;	
			}
		}
	}
	
	if ((sprite_index = spr_hellcannon_shoot_left) or (sprite_index = spr_hellcannon_shoot_right)) 
	&& (image_index >= image_number-1)
	{
		if (sprite_index = spr_hellcannon_shoot_left)
		{
			sprite_index = spr_hellcannon_facingL_idle;	
		}
		else if (sprite_index = spr_hellcannon_shoot_right)
		{
			sprite_index = spr_hellcannon_facingR_idle;	
		}

		grenadeSwitch = 0;
		
		State_machine_switch_state(hellcannon_idle);
		exit;
	}
	
	
	
	
	
	
	
	
	

}