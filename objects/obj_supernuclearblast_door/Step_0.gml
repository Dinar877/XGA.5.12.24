/// @description Insert description here
// You can write your code in this editor

RedblockerID_check()

if (global.doors_redblocker[redblockerID] > 0)
{	
	//destroy barrier blocks
	if (instance_exists(obj_block2_blocker))
	{
		with(obj_block2_blocker)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()
			}
		}
	}
	if (instance_exists(obj_block2_blocker1))
	{
		with(obj_block2_blocker1)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()
			}
		}
	}
	
	instance_destroy()
	
	exit;
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (instance_place(x,y,obj_supernuclearblast_randomexplosion)) && (enemy_hurt <= 0)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 1;
		audio_stop_sound(snd_metalcrash)
		audio_stop_sound(snd_metalcrash1)
		audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
	}
	hp -= 70;
    stay = 1;
    enemy_almost_hurt = 0;
}

if (hp <= 0)
{	
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_level_0"), obj_supernuclearblast_randomexplosion);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_level_0"), obj_supernuclearblast_randomexplosion);
	
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom),layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(x,y,layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	instance_create_layer(x,y,layer_get_id("Inst_scrn"), obj_supernuclearblast_doorpiece);
	
	audio_stop_sound(snd_metalcrash)
	audio_stop_sound(snd_metalcrash1)
	audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
	
	with(obj_player)
	{
		if (place_meeting(x,y+1,obj_block2_blocker))
		{
			global.jumpingdm = 0
			global.crouching = 0
			if (sprite_index = spr_player_crouch)
			{
				sprite_index = spr_player
				y -= 4;
			}
			State_machine_switch_state(Falling)	
		}
	}

	global.doors_redblocker[redblockerID] = 1;	
	
	

	//destroy barrier blocks
	if (instance_exists(obj_block2_blocker))
	{
		with(obj_block2_blocker)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()
			}
		}
	}
	if (instance_exists(obj_block2_blocker1))
	{
		with(obj_block2_blocker1)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()
			}
		}
	}


	instance_destroy();
}
