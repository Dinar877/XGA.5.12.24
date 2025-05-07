/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//if cutscene already played
if (global.cutsceneID[50] >= 1)
{
	if (instance_exists(obj_npc_pressjump))
	{
		instance_destroy(obj_npc_pressjump);
		instance_destroy();
		exit;
	}
}

scr_gamepad_test()
Gamepad_variables()

//manages "pressjump" object
if (sprite_index != spr_xga_midgame_eat_scientist) && (sprite_index != spr_darkeater_teleport_right_part1)
{
	Npc_pressjump_step();
}


//xga eating scientist cutscene
if (sprite_index = spr_xga_midgame_eat_scientist) && (image_index == 14)
{
	if (!audio_is_playing(snd_monsterbite_2))
	{
		audio_play_sound(snd_monsterbite_2,1000,false,global.sfx_volume)
	}
}
else if (sprite_index = spr_darkeater_teleport_right_part1) && (image_index == 1)
{
	if (!audio_is_playing(snd_player_spinjump_shorter))
	{
		audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
	}
}


if (sprite_index = spr_xga_midgame_eat_scientist) && (image_index >= image_number-1) && (image_speed > 0)
{
	sprite_index = spr_darkeater_teleport_right_part1
	exit;
}
else if (sprite_index = spr_darkeater_teleport_right_part1) && (image_index >= image_number-1) && (image_speed > 0)
{
	instance_destroy();
	
	global.cutsceneID[50] = 1;
	
	if (instance_exists(object_player2_0_sprites))
	{
		with(object_player2_0_sprites)
		{
			if (global.facingDir = 1)
			{
				sprite_index = spr_midgame_player_flash_right
				image_index = 0
				image_speed = 1
			}
			else if (global.facingDir = -1)
			{
				sprite_index = spr_midgame_player_flash_left
				image_index = 0
				image_speed = 1
			}
		}
	}
	
	exit;
}



if (instance_exists(obj_player))
{
	
	/*
	if (place_meeting(x,y,obj_player)) && (jump_pressed)
	{
		var vary1 = script_get_name(obj_player.state)
	}
	*/
	
	//talk
	if (place_meeting(x,y,obj_player)) && (jump_pressed)
	&& (global.pause_player = 0)
	&& (!instance_exists(obj_scrnDark_navigational))
	&& (!instance_exists(obj_midgame_xga_wallburst_hole))
	&& ((obj_player.state == (Idle)) or (obj_player.state == (Idle_landing)) or (obj_player.state == (Move))  or (obj_player.state == (Jumping)))
	{	
		with(obj_player)
			{	
				
				//get unstuck out of blocks
				if (place_meeting(x,y,obj_block))
				{
					while (place_meeting(x,y,obj_block))
					{
						y = floor(y) - 1;	
					}
				}
				
				hspd = 0;
				vspd = 0;
				
				
				
				State_machine_switch_state(Idle);
				
				if (instance_exists(obj_player_dashspark))
				{
					instance_destroy(obj_player_dashspark);
				}
				
				if (instance_exists(obj_player_sword_hitbox))
				{
					instance_destroy(obj_player_sword_hitbox);
				}
			}
			
		//text box
		instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_healthui2"),obj_scrnDark_navigational);
		instance_create_layer(obj_camera.x-160,obj_camera.y-80,layer_get_id("Inst_healthui"),obj_scrnDark_navigational2_test1);
		with(obj_scrnDark_navigational2_test1)
		{
			spawningID = obj_text_spawning_midgame_npc_scientist;
		}
			
		global.charging = 0
		global.charge_ready = 0
		global.nanoshield = 0
		global.invisibility = 0
		global.nuclearblast = 0
		global.shockwave = 0
		
		global.dash2 = 0
		global.dash2_spark = 0
		global.dashbegin2 = 0
		
		global.pause_player = 1
			
		if (global.facingDir > 0)
		{
			with(object_player2_0_sprites)
			{
				sprite_index = spr_stand_right_2	
			}
		}
		else if (global.facingDir < 0)
		{
			with(object_player2_0_sprites)
			{
				sprite_index = spr_stand_left_2	
			}
		}
		
		global.upgrade_process_data = 1;
		
		//save the original music globally
		global.sector_music_xga = global.sector_music;
		audio_stop_sound(global.sector_music);
	}
	
	
	//turning
	if (sprite_index = spr_scientist1_stand_left) && (obj_player.x > self.x)
	{
		sprite_index = spr_scientist1_turn_l2r;	
		image_index = 0
	}
	else if (sprite_index = spr_scientist1_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_scientist1_stand_right;	
	}

	if (sprite_index = spr_scientist1_stand_right) && (obj_player.x < self.x)
	{
		sprite_index = spr_scientist1_turn_r2l;	
		image_index = 0
	}
	else if (sprite_index = spr_scientist1_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_scientist1_stand_left;	
	}
}