/// @description Insert description here
// You can write your code in this editor

//using object's instance id
RedblockerID_check()
if (global.doors_redblocker[redblockerID] > 0)
{	
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
	
	instance_destroy()
	exit
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (instance_place(x,y,obj_nuclearblast_scrneffect)) && (enemy_hurt <= 0)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 1;
	}
	
	hp -= 70;
    stay = 1;
    enemy_almost_hurt = 0;
	
	if (hp < 70) && (hp >= 30) && (sprite_index != spr_nuclearblast_crystal2_1)
	{
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		
		sprite_index = spr_nuclearblast_crystal2_1
		
		//snd
		audio_stop_sound(snd_glass_shatter)
		var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
		audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))
	}
	else if (hp < 30) && (sprite_index != spr_nuclearblast_crystal2_2)
	{
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		
		sprite_index = spr_nuclearblast_crystal2_2
		
		//snd
		audio_stop_sound(snd_glass_shatter)
		var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
		audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))
	}
}

if (hp <= 0)
{	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random_big);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random_big);
	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	
	//snd
	audio_stop_sound(snd_glass_shatter)
	audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)

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
	
	//destroy block2_blockers
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

	global.doors_redblocker[redblockerID] = 1;	


	instance_destroy();
	exit
}
