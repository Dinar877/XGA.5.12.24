/// @description Insert description here
// You can write your code in this editon

if (!instance_exists(obj_corelock_switch))
{
	RedblockerID()
}

if (global.doors_redblocker[redblockerID] == true)
{
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	
	instance_destroy()
	
	exit;
}

//destroyed by screw attack
//screw attack
if (place_meeting(x,y,obj_player)) 
&& ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark)))
{
	audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
	
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	
	if (instance_number(obj_explosion_random) < 6)
	{
		while (instance_number(obj_explosion_random) < 6)
		{
			var randX = random_range(bbox_left,bbox_right);
			var randY = random_range(bbox_top,bbox_bottom);
			
			var instyexplotano = instance_create_depth(randX,randY,depth-1,obj_explosion_random);
		}
	}
	
	
	if (instance_exists(obj_corelock_switch))
	{
		with(obj_corelock_switch)
		{
			if (global.doors_redblocker[redblockerID] == false)
			{
				global.doors_redblocker[redblockerID] = true;
			}
		}
	}
	else if (!instance_exists(obj_corelock_switch)) && (redblockerID > 0)
	{
		if (global.doors_redblocker[redblockerID] == false)
		{
			global.doors_redblocker[redblockerID] = true;
		}
	}
	
	instance_destroy()
	
	exit;
}

//bullets
if (instance_place(id.x,id.y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

//sound effects
//closing
if (sprite_index = spr_corelock_reversing) && (round(image_index) == 28) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}

//opening
if (sprite_index = spr_corelock_opening) && (round(image_index) == 8) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}


//opening-finish
if (sprite_index = spr_corelock_opening) && (image_index >= image_number-1)
{
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	
	image_speed = 0
	image_index = image_number-1
	
	with(obj_corelock_switch)
	{
		if (global.doors_redblocker[redblockerID] == false)
		{
			global.doors_redblocker[redblockerID] = true;
		}
	}
}