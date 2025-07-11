// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hellcannon_forward(){
	
	//sfx
	if (!audio_is_playing(snd_rollingwheels))
	{
		var sndID = audio_play_sound(snd_rollingwheels,1000,false,global.sfx_volume);
	}
	
	if (facing = -1)
	{
		if (inst2.x > obj_player.x)
		{
			sprite_index = spr_hellcannon_facingL_walk_left;
			with(inst2)
			{
				hspd = -1;
				DetermineMoveScript(hspd);
			}
		}
		else if (inst2.x < obj_player.x)
		{
			sprite_index = spr_hellcannon_facingL_walk_right;
			with(inst2)
			{
				hspd = 1;
				DetermineMoveScript(hspd);
			}
		}
	}
	else if (facing = 1)
	{
		if (inst2.x < obj_player.x)
		{
			sprite_index = spr_hellcannon_facingR_walk_right;
			with(inst2)
			{
				hspd = 1;
				DetermineMoveScript(hspd);
			}
		}
		else if (inst2.x > obj_player.x)
		{
			sprite_index = spr_hellcannon_facingR_walk_left;
			with(inst2)
			{
				hspd = -1;
				DetermineMoveScript(hspd);
			}
		}
	}
	
	
	
	
	//shoot
	if ((inst2.inst_circle) && (inst2.inst_circle2))
	or (grenadeTimer >= 1)
	{
		grenadeTimer = 0;
		
		audio_stop_sound(snd_rollingwheels);
		
		if (facing = -1)
		{
			sprite_index = spr_hellcannon_shoot_left;
			image_index = 0;
		}
		else if (facing = 1)
		{
			sprite_index = spr_hellcannon_shoot_right;
			image_index = 0;
		}
		
		State_machine_switch_state(hellcannon_shoot);
		exit;
	}
	
	//grenade timer
	grenadeTimer += (random_range((1/60)/2,(1/60)/5));
}