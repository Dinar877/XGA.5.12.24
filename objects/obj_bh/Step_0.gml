/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.pause_player = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1) or (global.navigation_effect = 1)
or (global.upgrade_process_data = 1) or (global.upgrade_process = 1)
or (global.corelock_engage = 1)
or (global.stopper_2ndscrnshot = 1)
or (global.cutscene = 1) or (global.cutscene_suit = 1) or (global.loading_startgame = 1)
or (global.room_transition_prep == 1) or (global.room_y == 1)
{
	//disables code so we can use this object for the shock suit cutscene
	if (shocksuitcutsceneswitch == 0)
	{
		exit;
	}
}

//gamepad
scr_gamepad_test()
Gamepad_variables()

//manages "pressjump" object
if (sprite_index = spr_bh_big) or (sprite_index = spr_bh_small) or (sprite_index = spr_bh_verysmall_bw)
{
	Npc_pressjump_step();
}

//for flashing white shader
if (newTextAvailable > 0) && (instance_exists(obj_npc_pressjump))
&& (((global.cutsceneID[Cutscenes.blackholetalk1] == 0) && (newTextAvailable == 3)) or ((global.cutsceneID[Cutscenes.blackholetalk2] == 0) && (newTextAvailable == 4)))
{
	if (FadeNow > 0) 
	{ 
		FadeNow -= 0.01; 
	}
	else if (FadeNow <= 0)
	{
		FadeNow = 0.5;
	}
}
else if (((global.cutsceneID[Cutscenes.blackholetalk1] == 1) && (newTextAvailable == 3)) 
or ((global.cutsceneID[Cutscenes.blackholetalk1] == 1) && (newTextAvailable == 6))
or ((global.cutsceneID[Cutscenes.blackholetalk2] == 1) && (newTextAvailable == 4)) 
or ((global.cutsceneID[Cutscenes.blackholetalk2] == 1) && (newTextAvailable == 7)))
{
	FadeNow = 0.0;	
}

//for disappearing effect
if (sprite_index = spr_bh_verysmall)
{
	disappear = round(random_range(0,1))
}

//midgame big to small animation
if (sprite_index = spr_midgame_cutscene2_bh_bigtosmall) && (image_index >= image_number-1)
{
	sprite_index = spr_bh_small;
}

if ((newTextAvailable == 3) && (global.cutsceneID[Cutscenes.blackholetalk1] == 1))
or ((newTextAvailable == 4) && (global.cutsceneID[Cutscenes.blackholetalk2] == 1))
{
	if (instance_exists(obj_npc_pressjump))	
	{
		instance_destroy(obj_npc_pressjump)
		pressjumpID = -1
	}
}


/////////////////////
if (instance_exists(obj_player))
{
	if (((newTextAvailable == 3) && (global.cutsceneID[Cutscenes.blackholetalk1] == 0))
	or ((newTextAvailable == 6) && (global.cutsceneID[Cutscenes.blackholetalk1] == 1) && (global.cutsceneID[Cutscenes.blackholetalk2] == 0))
	or ((newTextAvailable == 4) && (global.cutsceneID[Cutscenes.blackholetalk2] == 0))
	or ((newTextAvailable == 7) && (global.cutsceneID[Cutscenes.blackholetalk2] == 1)))
	&& (shocksuitcutsceneswitch == 0)
	{
		//talk
		if (place_meeting(x,y,obj_player)) 
		&& (jump_pressed)
		&& (!instance_exists(obj_scrnDark_navigational))
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
			with(obj_scrnDark_navigational)
			{
				sprite_index = spr_bh_textbox_bg;
			}
			instance_create_layer(obj_camera.x-160,obj_camera.y-80,layer_get_id("Inst_healthui"),obj_scrnDark_navigational2_test1);
			with(obj_scrnDark_navigational2_test1)
			{
				spawningID = obj_text_spawning_BH;
				sprite_index = spr_bh_textbox;
				image_alpha = 0;
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
		}
	}
	else if (shocksuitcutsceneswitch == 1)
	{
		//talk
		if (place_meeting(x,y,obj_player)) 
		&& (jump_pressed)
		&& (!instance_exists(obj_scrnDark_navigational))
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
			
			
			//destroy pressjump text
			if (instance_exists(obj_npc_pressjump))	
			{
				instance_destroy(obj_npc_pressjump)
				pressjumpID = -1
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
			global.cutscene = 1;
			global.cutscene_presuit = 1;
			global.cutscene_suit = 0;
			
			id.depth = layer_get_depth(layer_get_id("Inst_doors"))
			
			//sfx
			audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
			audio_play_sound(snd_bh_talk,1000,false,global.sfx_volume)
		}
	}
	
	
	
	
	
	//shocksuit cutscene
	if (shocksuitcutsceneswitch == 1)
	&& (global.cutscene = 1)
	{
		if (move1switch == 0)
		{
			//fly up
			if (round(x) != move1X) && (round(y) != move1Y)
			{
				x = lerp(x,move1X,0.05);
				y = lerp(y,move1Y,0.05);
			}
			else 
			{	
				move1switch = 1;
				
				//sfx
				audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
			}
		}
		else if (move1switch == 1) && (move2switch == 0)
		{
			var plx = floor(obj_player.x)
			var ply = floor(obj_player.y)
			
			
			//fly in to player
			if (floor(x) < plx-1) or (floor(x) > plx+1)
			or (floor(y) < ply-1) or (floor(y) > ply+1)
			{
				x = lerp(x,plx,0.25);
				y = lerp(y,ply,0.25);
			}
			else if (floor(x) >= plx-1) && (floor(x) <= plx+1)
			&& (floor(y) >= ply-1) && (floor(y) <= ply+1)
			{
				move2switch = 1;
				
				instance_create_depth(x,y,id.depth,obj_item_shocksuit);
				
				instance_destroy();
			}
		}
	}
}