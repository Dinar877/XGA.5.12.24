// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bigsnail_jump(){
	
	//prep animation
	if (facing = -1) && (sprite_index = spr_bigsnail_left) && (rolltimer <= 1)
	{
		image_index = 0
		sprite_index = spr_bigsnail_roll_left
	}
	else if (facing = 1) && (sprite_index = spr_bigsnail_right) && (rolltimer <= 1)
	{
		image_index = 0
		sprite_index = spr_bigsnail_roll_right
	}
	
	if (facing = -1) && (sprite_index = spr_bigsnail_roll_left) && (rolltimer <= 1)
	{
		rolltimer += (1/60)
	}
	else if (facing = 1) && (sprite_index = spr_bigsnail_roll_right) && (rolltimer <= 1)
	{
		rolltimer += (1/60)
	}
	
	//start moving
	if (facing = -1) && (sprite_index = spr_bigsnail_roll_left) && (rolltimer >= 1)
	{
		sprite_index = spr_bigsnail_jump_left;
		obj_boss_bigsnail_hitbox.hspd = -3
		obj_boss_bigsnail_hitbox.vspd = -8
			
		//sfx
		if (!audio_is_playing(snd_swordswoosh))
		{
			snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)	
			audio_sound_gain(snd1,0,500)
		}
	}
	else if (facing = 1) && (sprite_index = spr_bigsnail_roll_right) && (rolltimer >= 1)
	{
		sprite_index = spr_bigsnail_jump_right;	
		obj_boss_bigsnail_hitbox.hspd = 3
		obj_boss_bigsnail_hitbox.vspd = -8
			
		//sfx
		if (!audio_is_playing(snd_swordswoosh))
		{
			snd1 = audio_play_sound(snd_swordswoosh,1000,false,global.sfx_volume)	
			audio_sound_set_track_position(snd1,0.6)	
			audio_sound_gain(snd1,0,500)
		}
	}
		
	//sfx
	if (floor(image_index) == 0)
	{
		audio_stop_sound(snd_player_spinjump_shorter)
		audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)	
	}
	
	
	//move
	if (sprite_index = spr_bigsnail_jump_right) or (sprite_index = spr_bigsnail_jump_left)
	{
		with(obj_boss_bigsnail_hitbox)
		{
			vspdKiller += 0.25;
			
			//move code
			if (!place_meeting(x+hspd,y+vspd,obj_block))
			&& (!place_meeting(x+hspd,y+vspd,obj_slope1_left))&& (!place_meeting(x+hspd,y+vspd,obj_slope1_right))
			&& (!place_meeting(x+hspd,y+vspd,obj_block2_invisible_bossdoor))
			{
				if (obj_boss_bigsnail_sprites.facing == -1)
				{
					hspd = -2;
				}	
				else if (obj_boss_bigsnail_sprites.facing == 1)
				{
					hspd = 2;
				}
				vspd = -10 + floor(vspdKiller);
				vspdKiller += 0.25;
				
				
				x += hspd;
				y += vspd;
			}
			else if (!place_meeting(x+hspd,y,obj_block))
			&& (!place_meeting(x+hspd,y,obj_slope1_left))&& (!place_meeting(x+hspd,y,obj_slope1_right))
			&& (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
			{
				x += hspd;
			}
			else if (!place_meeting(x,y+abs(vspd),obj_block))
			&& (!place_meeting(x,y+vspd,obj_slope1_left))&& (!place_meeting(x,y+vspd,obj_slope1_right))
			&& (!place_meeting(x,y+vspd,obj_block2_invisible_bossdoor))
			{
				vspd = -10 + floor(vspdKiller);
				vspdKiller += 0.5;
				
				y += vspd;
			}
			
			//bouncing off walls
			if (place_meeting(x+hspd,y,obj_block))
			&& (!place_meeting(x+hspd,y,obj_slope1_left))&& (!place_meeting(x+hspd,y,obj_slope1_right))
			&& (!place_meeting(x+hspd,y,obj_block2_invisible_bossdoor))
			{
				//right
				if (hspd > 0)
				{
					while (!position_meeting(x+1,y,obj_block))
					&& (!position_meeting(x+1,y,obj_slope1_left)) && (!position_meeting(x+1,y,obj_slope1_right))
					&& (!place_meeting(x+1,y,obj_block))
					&& (!place_meeting(x+1,y,obj_slope1_left))&& (!place_meeting(x+1,y,obj_slope1_right))
					{
						x = floor(x);
						x++;
					}
					
					if ((position_meeting(x+1,y,obj_block))
					or (position_meeting(x+1,y,obj_slope1_left)) or (position_meeting(x+1,y,obj_slope1_right))
					or (place_meeting(x+1,y,obj_block))
					or (place_meeting(x+1,y,obj_slope1_left)) or (place_meeting(x+1,y,obj_slope1_right)))
					{
						hspd = -hspd;
						obj_boss_bigsnail_sprites.facing = -1
						obj_boss_bigsnail_sprites.sprite_index = spr_bigsnail_jump_left
					}
				}
				else if (hspd < 0) //left
				{
					while (!position_meeting(x-1,y,obj_block))
					&& (!position_meeting(x-1,y,obj_slope1_left)) && (!position_meeting(x-1,y,obj_slope1_right))
					&& (!place_meeting(x-1,y,obj_block))
					&& (!place_meeting(x-1,y,obj_slope1_left))&& (!place_meeting(x-1,y,obj_slope1_right))
					{
						x = floor(x);
						x--;
					}
					
					if ((position_meeting(x-1,y,obj_block))
					or (position_meeting(x-1,y,obj_slope1_left)) or (position_meeting(x-1,y,obj_slope1_right))
					or (place_meeting(x-1,y,obj_block))
					or (place_meeting(x-1,y,obj_slope1_left)) or (place_meeting(x-1,y,obj_slope1_right)))
					{
						hspd = -hspd;
						obj_boss_bigsnail_sprites.facing = 1
						obj_boss_bigsnail_sprites.sprite_index = spr_bigsnail_jump_right
					}
				}
				
				audio_stop_sound(snd_rockimpact1)
				audio_play_sound(snd_rockimpact1,1000,false)
			}
			
			//bouncing off ground
			if ((place_meeting(x,y+abs(vspd),obj_block))
			or (place_meeting(x+hspd,y+(vspd),obj_slope1_left))
			or (place_meeting(x+hspd,y+(vspd),obj_slope1_right)))
			&& (vspdKiller >= 0) 
			&& (bouncelimit < 2)
			{
				y = floor(y)
				
				//get object 1 pixel above floor
				while (!position_meeting(x,bbox_bottom+1,obj_block))
				&& (!position_meeting(x,bbox_bottom+1,obj_slope1_left)) && (!position_meeting(x,bbox_bottom+1,obj_slope1_right))
				&& (!place_meeting(x,y+1,obj_block))
				&& (!place_meeting(x,y+1,obj_slope1_left))&& (!place_meeting(x,y+1,obj_slope1_right))
				{
					y = floor(y);
					y ++;	
				}
				
				//if stuck inside floor, move up
				while ((position_meeting(x,bbox_bottom,obj_block))
				or (position_meeting(x,bbox_bottom,obj_slope1_left)) or (position_meeting(x,bbox_bottom,obj_slope1_right))
				or (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)))
				{
					y = floor(y)
					y --;	
				}	
				
				vspd = -10;
				vspdKiller = 5;
				bouncelimit++;
				
				
			
				with(obj_boss_bigsnail_sprites)
				{		
					audio_stop_sound(snd_rockimpact1)
					audio_play_sound(snd_rockimpact1,1000,false)
					
					audio_stop_sound(snd_swordswoosh)

					State_machine_switch_state(bigsnail_jump)
				}
			}
			
			//landing
			if ((place_meeting(x,y+abs(vspd),obj_block))
			or (place_meeting(x+hspd,y+(vspd),obj_slope1_left))
			or (place_meeting(x+hspd,y+(vspd),obj_slope1_right)))
			&& (vspdKiller >= 0) 
			&& (bouncelimit >= 2)
			{
				y = floor(y)
				
				//get object 1 pixel above floor
				while (!position_meeting(x,bbox_bottom+1,obj_block))
				&& (!position_meeting(x,bbox_bottom+1,obj_slope1_left)) && (!position_meeting(x,bbox_bottom+1,obj_slope1_right))
				&& (!place_meeting(x,y+1,obj_block))
				&& (!place_meeting(x,y+1,obj_slope1_left))&& (!place_meeting(x,y+1,obj_slope1_right))
				{
					y = floor(y);
					y ++;	
				}
				
				//if stuck inside floor, move up
				while ((position_meeting(x,bbox_bottom,obj_block))
				or (position_meeting(x,bbox_bottom,obj_slope1_left)) or (position_meeting(x,bbox_bottom,obj_slope1_right))
				or (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right)))
				{
					y = floor(y)
					y --;	
				}	
				
				hspd = 0;
				bouncelimit = 0;
				
				
			
				with(obj_boss_bigsnail_sprites)
				{
					if (facing = -1)
						{
							sprite_index = spr_bigsnail_left;	
						}
					else if (facing = 1)
						{
							sprite_index = spr_bigsnail_right;	
						}
						
					with(obj_boss_bigsnail_hitbox)
						{
							vspd = 0;
							hspd = 0;
							vspdKiller = 0;
						}
						
					rolltimer = 0;
					
					audio_stop_sound(snd_swordswoosh)
					
					audio_stop_sound(snd_rockimpact1)
					audio_play_sound(snd_rockimpact1,1000,false)

					State_machine_switch_state(bigsnail_idle)
				}
			}
			
			
		}
	}
	

}