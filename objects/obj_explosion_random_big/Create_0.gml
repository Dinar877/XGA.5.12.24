
n = round(random_range(0,5))


if (n = 0)
	{
		sprite_index = spr_explosion2
		
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	}
else if (n = 1)
	{
		sprite_index = spr_explosion3
		
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	}
else if (n = 2)
	{
		sprite_index = spr_explosion4
		
		audio_stop_sound(snd_beamexplosion1)
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
	}
else if (n = 3)
	{
		sprite_index = spr_explosion5
		
		audio_stop_sound(snd_beamexplosion1)
		audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
	}
else if (n = 4)
	{
		sprite_index = spr_explosion6
		
		audio_stop_sound(snd_beamexplosion2)
		audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
	}
else if (n = 5)
	{
		sprite_index = spr_explosion7
		
		audio_stop_sound(snd_beamexplosion2)
		audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
	}

image_angle = round(random_range(image_angle = 0,image_angle = 360));


