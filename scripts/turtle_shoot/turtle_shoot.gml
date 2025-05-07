// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function turtle_shoot(){
	
	if (sprite_index != spr_boss_turtle_left_shoot) && (facing < 0)
	{
		sprite_index = spr_boss_turtle_left_shoot
	}
	else if (sprite_index != spr_boss_turtle_right_shoot) && (facing > 0)
	{
		sprite_index = spr_boss_turtle_right_shoot
	}
	
	
	//sfx
	if (floor(image_index) == 10) && (!audio_is_playing(snd_electricity_short))
	{
		audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume)
	}
	else if (floor(image_index) == 15)
	{
		audio_stop_sound(snd_electricity_short)
	}
	
	if (floor(image_index) == 18) && (!audio_is_playing(snd_player_spinjump_shorter))
	{
		audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
	}
	else if (floor(image_index) == 23)
	{
		audio_stop_sound(snd_player_spinjump_shorter)
	}
	
	if (floor(image_index) == 24) && (!audio_is_playing(snd_electricity))
	{
		var snd = audio_play_sound(snd_electricity,1000,true,global.sfx_volume)
		audio_sound_set_track_position(snd,2)
	}
	
	if (floor(image_index) == 36)
	{
		audio_stop_sound(snd_electricity)
		
		if (!audio_is_playing(snd_player_spinjump_shorter))
		{
			audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
		}
		if (!audio_is_playing(snd_metalcrash2))
		{
			audio_play_sound(snd_metalcrash2,1000,false,global.sfx_volume)
		}
		
		
		
		if (!instance_exists(obj_boss_turtle_energyball))
		{
			var inst = instance_create(x+(75*facing),y-15,obj_boss_turtle_energyball)
			with(inst)
			{
				hspd = (other.facing*6);
				vspd = 3;
				shootlimit = 1
			}
		}
		shootbullet1 = 1;
		shootbullet2 = 0;
	}
	
	
	
	//end all
	if (image_index >= image_number-1)
	{
		audio_stop_sound(snd_electricity_short)
		audio_stop_sound(snd_player_spinjump_shorter)
		audio_stop_sound(snd_metalcrash2)
		
		if (facing < 0)
		{
			sprite_index = spr_boss_turtle_left
		}
		else if (facing > 0)
		{
			sprite_index = spr_boss_turtle_right
		}
		
		State_machine_switch_state(turtle_idle)
		exit
	}

}