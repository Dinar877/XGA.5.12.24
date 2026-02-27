/// @description Insert description here
// You can write your code in this editon

if (!instance_exists(obj_corelock_switch))
&& (BossblockerID <= 0)
{
	RedblockerID()
}


if (global.bossblockers[BossblockerID] > 0) && (redblockerID <= 0)
{
	instance_destroy();
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	instance_destroy(inst9)
	
	exit
}
else if (global.doors_redblocker[redblockerID] == true) && (BossblockerID <= 0)
{
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	instance_destroy(inst9)
	
	instance_destroy()
	
	exit;
}


///closing
if (sprite_index = spr_corelock_sideways_closing) && (round(image_index) == 8) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}
//opening
if (sprite_index = spr_corelock_sideways_opening) && (round(image_index) == 28) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
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

//if closed
if (sprite_index == spr_corelock_sideways_open) && (switch1 = 0)
{
	//deactivate
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	instance_deactivate_object(inst6)	
	instance_deactivate_object(inst7)	
	instance_deactivate_object(inst8)
	instance_deactivate_object(inst9)
	
	exit
}


//destroyed by screw attack while shut
if (open == 0)
&& (place_meeting(x,y,obj_player)) 
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
	instance_destroy(inst9)
	
	if (instance_number(obj_explosion_random) < 6)
	{
		while (instance_number(obj_explosion_random) < 6)
		{
			var randX = random_range(bbox_left,bbox_right);
			var randY = random_range(bbox_top,bbox_bottom);
			
			var instyexplotano = instance_create_depth(randX,randY,depth-1,obj_explosion_random);
		}
	}
	
	
	if (instCoreSwitch > 0)
	{
		with(instCoreSwitch)
		{
			if (global.doors_redblocker[redblockerID] == false)
			{
				global.doors_redblocker[redblockerID] = true;
			}
		}
	}
	else if (instance_exists(obj_corelock_switch))
	&& (instCoreSwitch <= 0)
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


//closing
if (open == 1) && (sprite_index != spr_corelock_sideways_closing) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_sideways_closing
	
	instance_activate_object(inst1)	
	instance_activate_object(inst2)	
	instance_activate_object(inst3)	
	instance_activate_object(inst4)	
	instance_activate_object(inst5)
	instance_activate_object(inst6)	
	instance_activate_object(inst7)	
	instance_activate_object(inst8)
	instance_activate_object(inst9)
}
else if (open == 1) && (sprite_index == spr_corelock_sideways_closing) && (image_index >= image_number-1) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_sideways_idle
	open = 0
	switch1 = 0
	exit
}


//opening
if (open == 0) && (sprite_index != spr_corelock_sideways_opening) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_sideways_opening
	
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	instance_deactivate_object(inst6)	
	instance_deactivate_object(inst7)	
	instance_deactivate_object(inst8)
	instance_deactivate_object(inst9)
}
else if (open == 0) && (sprite_index == spr_corelock_sideways_opening) && (image_index >= image_number-1) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_sideways_open
	open = 1
	switch1 = 0
	
	global.bossblockers[BossblockerID] = 1
	exit
}