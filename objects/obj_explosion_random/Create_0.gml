n = round(random_range(0,4))

if (n = 0)
{
	sprite_index = spr_explosion2
}
else if (n = 1)
{
	sprite_index = spr_explosion3
}
else if (n = 2)
{
	sprite_index = spr_explosion4
}
else if (n = 3)
{
	sprite_index = spr_explosion5
}
else if (n = 4)
{
	sprite_index = spr_explosion6
}

image_angle = round(random_range(image_angle = 20,image_angle = -20));

inst1 = instance_create(x,y,obj_explosion_normalhit_chunk_afterexplosion)
inst2 = instance_create(x,y,obj_explosion_normalhit_chunk_afterexplosion)
inst3 = instance_create(x,y,obj_explosion_normalhit_chunk_afterexplosion)

snd = round(random_range(snd_beamexplosion,snd_beamexplosion2))

if (!audio_is_playing(snd))
{
	var snd1 = audio_play_sound(snd,1000,false,global.sfx_volume)
	audio_sound_gain(snd1,0.5,0)
}
else if (audio_is_playing(snd))
{
	audio_stop_sound(snd)
	var snd1 = audio_play_sound(snd,1000,false,global.sfx_volume)
	audio_sound_gain(snd1,0.5,0)
}

