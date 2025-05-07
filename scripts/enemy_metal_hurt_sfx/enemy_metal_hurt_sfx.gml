// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_metal_hurt_sfx(){
	var bulletInstance = (instance_place(x,y,obj_bullet)) or (instance_place(x,y,obj_bullet_side1)) or (instance_place(x,y,obj_bullet_side2)) 
	or (instance_place(x,y,obj_player_sword_hitbox))
	
	if (bulletInstance > 0)
	{
		if (variable_instance_exists(bulletInstance,"started1"))
		{
			//metal band hurt sfx
			if (!audio_is_playing(snd_metalbang))
			{
				snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
				audio_sound_gain(snd,0,1500)
				audio_sound_pitch(snd, random_range(0.995,1.005))
			}
			else if (audio_is_playing(snd_metalbang))
			{
				audio_stop_sound(snd_metalbang)
				snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
				audio_sound_gain(snd,0,1500)
				audio_sound_pitch(snd, random_range(0.995,1.005))
			}
		}
	}
}